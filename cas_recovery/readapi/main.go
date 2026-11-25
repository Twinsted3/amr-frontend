// Windows build of the four SQLite list endpoints reconstructed from cas-backend.exe.
package main

import (
	"database/sql"
	"encoding/json"
	"flag"
	"fmt"
	"log"
	"net/http"
	"net/url"
	"os"
	"path/filepath"
	"strconv"
	"strings"
	"time"

	_ "github.com/ncruces/go-sqlite3/driver"
	_ "github.com/ncruces/go-sqlite3/embed"
)

// Query only the fields that the corresponding original controller copies to its response.
type listing struct {
	path, table, title, columns, order string
	searchColumns                      []string
	scan                               func(*sql.Rows) (any, error)
}

var listings = []listing{
	{"/map/", "agv_map", "地图",
		"id, coalesce(name,''), coalesce(path,''), coalesce(version,''), createTi", "id ASC",
		[]string{"name", "version"}, func(rows *sql.Rows) (any, error) {
			var m MapRequest
			err := rows.Scan(&m.Id, &m.Name, &m.Path, &m.Version, (*storedTime)(&m.CreateTi))
			return m, err
		}},
	{"/vehicle/", "agv_vehicle", "车辆",
		"id, coalesce(ip,''), coalesce(port,0), coalesce(name,''), coalesce(type,''), coalesce(brand,''), coalesce(radarBrand,''), coalesce(motorBrand,'')", "id ASC",
		[]string{"name", "type", "brand", "radarBrand", "motorBrand"}, func(rows *sql.Rows) (any, error) {
			var v VehRequest
			err := rows.Scan(&v.Id, &v.Ip, &v.Port, &v.Name, &v.Type, &v.Brand, &v.RadarBrand, &v.MotorBrand)
			return v, err
		}},
	{"/task", "agv_task", "任务",
		`id, coalesce(taskType,''), coalesce(pubUser,0), coalesce(pry,''), coalesce(status,0), coalesce(descr,''),
		createTime, finTime, del, coalesce(vehid,''), coalesce(startPos,''), coalesce(endPos,''), coalesce(roadPoint,''),
		coalesce(endPoint,''), coalesce(isCycle,0), coalesce(taskName,''), coalesce(runHeight,0)`, "id ASC",
		[]string{"taskType", "vehid", "descr"}, func(rows *sql.Rows) (any, error) {
			var t TaskRequest
			err := rows.Scan(&t.Id, &t.TaskType, &t.PubUser, &t.Pry, &t.Status, &t.Desc, (*storedTime)(&t.CreateTime),
				(*storedTime)(&t.FinTime), &t.Del, &t.VehId, &t.StartPos, &t.EndPos, &t.RoadPoint, &t.EndPoint, &t.IsCycle, &t.TaskName, &t.RunHeight)
			return t, err
		}},
	{"/task-chain", "agv_task_chain", "任务链",
		"id, coalesce(chainName,''), coalesce(descr,''), chainJson, status", "id DESC",
		[]string{"chainName", "descr"}, func(rows *sql.Rows) (any, error) {
			var t TaskChainRequest
			err := rows.Scan(&t.Id, &t.ChainName, &t.Desc, &t.ChainJson, &t.Status)
			return t, err
		}},
}

// Historical databases contain both SQLite UTC timestamps and timestamps with an offset.
type storedTime time.Time

func (d *storedTime) Scan(value any) error {
	var parsed time.Time
	switch v := value.(type) {
	case time.Time:
		parsed = v
	case int64:
		if v > 1e12 || v < -1e12 {
			parsed = time.UnixMilli(v).UTC()
		} else {
			parsed = time.Unix(v, 0).UTC()
		}
	case string:
		s := strings.Replace(v, " ", "T", 1)
		for _, layout := range []string{time.RFC3339Nano, "2006-01-02T15:04:05", "2006-01-02T15:04", "2006-01-02"} {
			if t, err := time.Parse(layout, s); err == nil {
				parsed = t
				break
			}
		}
	}
	*d = storedTime(parsed)
	return nil
}

func (l listing) where(q url.Values) (string, []any) {
	var clauses []string
	var args []any
	if search := q.Get("search"); search != "" {
		var matches []string
		for _, col := range l.searchColumns {
			matches = append(matches, col+" LIKE ?")
			args = append(args, "%"+search+"%")
		}
		clauses = append(clauses, "("+strings.Join(matches, " OR ")+")")
	}
	if l.path == "/task" || l.path == "/task-chain" {
		clauses = append(clauses, "del = 0")
	}
	if l.path == "/task" {
		if v := q.Get("status"); v != "" {
			clauses = append(clauses, "status = ?")
			args = append(args, v)
		}
		if v := q.Get("priority"); v != "" {
			clauses = append(clauses, "pry = ?")
			args = append(args, v)
		}
	}
	if l.path == "/vehicle/" {
		if v := q.Get("ip"); v != "" {
			clauses = append(clauses, "ip = ?")
			args = append(args, v)
		}
		if port, _ := strconv.Atoi(q.Get("port")); port >= 1024 {
			clauses = append(clauses, "port = ?")
			args = append(args, port)
		}
	}
	if len(clauses) == 0 {
		return "", args
	}
	return " WHERE " + strings.Join(clauses, " AND "), args
}

func (l listing) fetch(r *http.Request, db *sql.DB) (map[string]any, error) {
	q := r.URL.Query()
	page, size := 1, 20
	if l.path == "/map/" {
		size = 0
	}
	if q.Has("page") {
		page, _ = strconv.Atoi(q.Get("page"))
	}
	if q.Has("size") {
		size, _ = strconv.Atoi(q.Get("size"))
	}
	where, args := l.where(q)
	from := " FROM " + l.table + where
	tx, err := db.BeginTx(r.Context(), nil)
	if err != nil {
		return nil, err
	}
	defer tx.Rollback()
	var total int64
	if err := tx.QueryRowContext(r.Context(), "SELECT count(*)"+from, args...).Scan(&total); err != nil {
		return nil, err
	}
	query := "SELECT " + l.columns + from + " ORDER BY " + l.order
	if l.path != "/map/" || size > 0 {
		offset := max(0, (page-1)*size)
		query += " LIMIT ? OFFSET ?"
		args = append(args, size, offset)
	}
	rows, err := tx.QueryContext(r.Context(), query, args...)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var data []any
	key := "sucess" // Spelling used by the three original handlers.
	if l.path == "/task-chain" {
		key = "success"
		data = []any{}
	}
	for rows.Next() {
		item, err := l.scan(rows)
		if err != nil {
			return nil, err
		}
		data = append(data, item)
	}
	if err := rows.Err(); err != nil {
		return nil, err
	}
	if err := tx.Commit(); err != nil {
		return nil, err
	}
	return map[string]any{key: true, "message": l.title + "获取成功", "page": page, "size": size, "total": total, "data": data}, nil
}

func routes(db *sql.DB) http.Handler {
	mux := http.NewServeMux()
	for _, l := range listings {
		path := "/cas/biz/v1" + l.path
		if strings.HasSuffix(path, "/") {
			path += "{$}"
		}
		mux.HandleFunc("GET "+path, func(w http.ResponseWriter, r *http.Request) {
			result, err := l.fetch(r, db)
			if err != nil {
				log.Printf("%s: %v", l.path, err)
				if l.path == "/task-chain" {
					result = map[string]any{"success": false, "message": l.title + "获取失败"}
				} else {
					result = map[string]any{"sucess": false, "message": l.title + "获取失败", "error": "内部错误"}
				}
			}
			w.Header().Set("Content-Type", "application/json; charset=utf-8")
			if err := json.NewEncoder(w).Encode(result); err != nil {
				log.Print(err)
			}
		})
	}
	return mux
}

func openReadOnly(path string) (*sql.DB, error) {
	abs, err := filepath.Abs(path)
	if err != nil {
		return nil, err
	}
	file := url.URL{Path: filepath.ToSlash(abs)}
	db, err := sql.Open("sqlite3", "file:"+file.EscapedPath()+"?mode=ro")
	if err != nil {
		return nil, err
	}
	if err = db.Ping(); err != nil {
		db.Close()
		return nil, err
	}
	return db, nil
}

func main() {
	exe, err := os.Executable()
	if err != nil {
		log.Fatal(err)
	}
	path := flag.String("db", filepath.Join(filepath.Dir(exe), "..", "data", "amr.db"), "SQLite database file (read-only)")
	port := flag.Int("port", 18080, "loopback HTTP port")
	flag.Parse()
	db, err := openReadOnly(*path)
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()
	addr := fmt.Sprintf("127.0.0.1:%d", *port)
	log.Printf("地图列表 http://%s/cas/biz/v1/map/", addr)
	server := http.Server{Addr: addr, Handler: routes(db), ReadHeaderTimeout: 5 * time.Second}
	log.Fatal(server.ListenAndServe())
}
