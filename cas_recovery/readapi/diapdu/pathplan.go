// Package diapdu contains the recovered offline station planner.
package diapdu

import (
	"fmt"
	"math"
	"slices"
	"strings"
)

type Position struct{ X, Y float64 }
type Location struct{ X, Y float64 }
type Node struct {
	Name     string
	Position Position
}
type Edge struct {
	From, To string
	Distance float64
	Weight   int
}
type Graph struct {
	Nodes []*Node
	Edges []*Edge
}

func StraightLineTaskDistance(vehPos, pickup, dropoff Location) float64 {
	distance := func(a, b Location) float64 {
		x, y := a.X-b.X, a.Y-b.Y
		return math.Sqrt(x*x + y*y)
	}
	return distance(vehPos, pickup) + distance(pickup, dropoff)
}

type neighbor struct {
	name     string
	distance float64
}

// The original PlanStationPath calls shortestPathOnGraph with a nil TrafficManager.
// This function implements that branch, using edge distance as cost.
func shortestStationPath(adj map[string][]neighbor, from, to string) []string {
	if _, ok := adj[from]; !ok {
		return nil
	}
	dist := make(map[string]float64, len(adj))
	for name := range adj {
		dist[name] = math.MaxFloat64
	}
	dist[from] = 0
	visited := make(map[string]bool)
	previous := make(map[string]string)
	for {
		current, best := "", math.MaxFloat64/2
		for name, d := range dist {
			if !visited[name] && d < best {
				current, best = name, d
			}
		}
		if current == "" || current == to {
			break
		}
		visited[current] = true
		for _, n := range adj[current] {
			if d := best + n.distance; d < dist[n.name] {
				dist[n.name] = d
				previous[n.name] = current
			}
		}
	}
	if d, ok := dist[to]; !ok || d >= math.MaxFloat64/2 {
		return nil
	}
	path := []string{to}
	for path[len(path)-1] != from {
		parent := previous[path[len(path)-1]]
		if parent == "" || len(path) > len(adj) {
			return nil
		}
		path = append(path, parent)
	}
	slices.Reverse(path)
	return path
}

// PlanStationPath visits waypoints in order and merges the paths at shared stations.
func PlanStationPath(graph *Graph, start, end string, waypoints []string) ([]string, error) {
	if graph == nil {
		return nil, fmt.Errorf("地图图为空")
	}
	start, end = strings.TrimSpace(start), strings.TrimSpace(end)
	if start == "" || end == "" {
		return nil, fmt.Errorf("起点或终点站点名称为空")
	}
	stops := []string{start}
	for _, w := range waypoints {
		if name := strings.TrimSpace(w); name != "" {
			stops = append(stops, name)
		}
	}
	stops = append(stops, end)
	nodes := make(map[string]bool, len(graph.Nodes))
	for _, n := range graph.Nodes {
		if n != nil && n.Name != "" {
			nodes[n.Name] = true
		}
	}
	for _, s := range stops {
		if !nodes[s] {
			return nil, fmt.Errorf("站点 %q 不在地图节点中", s)
		}
	}
	adj := make(map[string][]neighbor)
	for _, e := range graph.Edges {
		if e == nil || e.Weight <= 0 {
			continue
		}
		adj[e.From] = append(adj[e.From], neighbor{e.To, e.Distance})
		adj[e.To] = append(adj[e.To], neighbor{e.From, e.Distance})
	}
	var path []string
	for i := 1; i < len(stops); i++ {
		from, to := stops[i-1], stops[i]
		if from == to {
			continue
		}
		part := shortestStationPath(adj, from, to)
		if len(part) == 0 {
			return nil, fmt.Errorf("无法规划路径: %s -> %s", from, to)
		}
		if len(path) > 0 && path[len(path)-1] == part[0] {
			part = part[1:]
		}
		path = append(path, part...)
	}
	if len(path) == 0 {
		return nil, fmt.Errorf("路径规划结果为空")
	}
	return path, nil
}
