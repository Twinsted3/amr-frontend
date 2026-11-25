package main

import (
	"database/sql"
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"path/filepath"
	"testing"
)

func TestListContracts(t *testing.T) {
	path := filepath.Join(t.TempDir(), "dispatch #1.db")
	writeDB, err := sql.Open("sqlite3", path)
	if err != nil {
		t.Fatal(err)
	}
	fixture := []string{
		"CREATE TABLE agv_map(id INTEGER, name, path, version, createTi timestamp)",
		"INSERT INTO agv_map VALUES(2,'South','/s','V1','2026-03-16 07:45:41'),(1,'North','/n','V2','2026-05-06 10:19:53.1148905+08:00')",
		"CREATE TABLE agv_vehicle(id TEXT, ip, port INTEGER, name, type, brand, radarBrand, motorBrand)",
		"INSERT INTO agv_vehicle VALUES('v2','127.0.0.2',19205,'test','fork','ACME','',''),('v1','127.0.0.1',19204,'test','fork','ACME','','')",
		"CREATE TABLE agv_task(id INTEGER, taskType, pubUser, pry, status INTEGER, descr, createTime timestamp, finTime timestamp, del, vehid, startPos, endPos, roadPoint, endPoint, isCycle, taskName, runHeight)",
		"INSERT INTO agv_task VALUES(1,'move',3,'high',2,'demo',NULL,NULL,0,'V','start','end','W','E',1,'foo',1.5),(2,'move',3,'high',2,'hidden',NULL,NULL,1,'V','','','','',0,'',0)",
		"CREATE TABLE agv_task_chain(id INTEGER, chainName, descr, chainJson, status INTEGER, del INTEGER)",
		"INSERT INTO agv_task_chain VALUES(2,'first','demo','[]',1,0),(3,'second','demo','[1]',2,0),(4,'hidden','','[]',0,1)",
	}
	for _, statement := range fixture {
		if _, err := writeDB.Exec(statement); err != nil {
			t.Fatal(err)
		}
	}
	if err := writeDB.Close(); err != nil {
		t.Fatal(err)
	}
	db, err := openReadOnly(path)
	if err != nil {
		t.Fatal(err)
	}
	defer db.Close()
	if _, err := db.Exec("DELETE FROM agv_map"); err == nil {
		t.Fatal("database accepted a write")
	}
	router := routes(db)
	request := func(path string) map[string]any {
		t.Helper()
		w := httptest.NewRecorder()
		router.ServeHTTP(w, httptest.NewRequest("GET", "/cas/biz/v1/"+path, nil))
		var body map[string]any
		if w.Code != 200 {
			t.Fatalf("%s: %d", path, w.Code)
		}
		if err := json.Unmarshal(w.Body.Bytes(), &body); err != nil {
			t.Fatal(err)
		}
		return body
	}
	first := func(body map[string]any) map[string]any {
		t.Helper()
		rows, ok := body["data"].([]any)
		if !ok || len(rows) == 0 {
			t.Fatalf("missing data: %v", body)
		}
		return rows[0].(map[string]any)
	}
	m := request("map/")
	if m["sucess"] != true || m["total"] != 2.0 || m["size"] != 0.0 || first(m)["createTi"] != "2026-05-06T10:19:53.1148905+08:00" || first(m)["data"] != nil {
		t.Fatal(m)
	}
	if m := request("map/?page=2&size=1"); first(m)["name"] != "South" || first(m)["createTi"] != "2026-03-16T07:45:41Z" {
		t.Fatal(m)
	}
	if m := request("map/?search=V2"); m["total"] != 1.0 || first(m)["name"] != "North" {
		t.Fatal(m)
	}
	if m := request("map/?search=absent"); m["total"] != 0.0 || m["data"] != nil {
		t.Fatal(m)
	}
	v := request("vehicle/?search=ACME&ip=127.0.0.2&port=19205")
	if v["sucess"] != true || v["total"] != 1.0 || first(v)["code"] != "v2" || first(v)["port"] != 19205.0 {
		t.Fatal(v)
	}
	if v := request("vehicle/?port=80"); v["total"] != 2.0 || first(v)["code"] != "v1" {
		t.Fatal(v)
	}
	task := request("task?search=demo&status=2&priority=high")
	item := first(task)
	if task["total"] != 1.0 || item["desc"] != "demo" || item["waypoint"] != "W" || item["vehNo"] != "V" || item["isCycle"] != true || item["runHeight"] != 1.5 || item["maxSpeed"] != "" || item["finTime"] != "0001-01-01T00:00:00Z" {
		t.Fatal(task)
	}
	if m := request("task"); m["total"] != 1.0 {
		t.Fatal(m)
	}
	chain := request("task-chain?search=demo&size=1")
	if chain["success"] != true || chain["total"] != 2.0 || first(chain)["chainName"] != "second" || first(chain)["chainJson"] != "[1]" {
		t.Fatal(chain)
	}
	if m := request("task-chain?search=absent"); m["data"] == nil || len(m["data"].([]any)) != 0 {
		t.Fatal(m)
	}
	for _, path := range []string{"control/forward", "map/file", "task/del"} {
		w := httptest.NewRecorder()
		router.ServeHTTP(w, httptest.NewRequest(http.MethodPost, "/cas/biz/v1/"+path, nil))
		if w.Code != http.StatusNotFound {
			t.Fatalf("%s: %d", path, w.Code)
		}
	}
}
