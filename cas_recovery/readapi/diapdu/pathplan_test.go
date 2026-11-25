package diapdu

import (
	"slices"
	"testing"
)

func TestStationPath(t *testing.T) {
	g := &Graph{Nodes: []*Node{{Name: "A"}, {Name: "B"}, {Name: "C"}, {Name: "D"}, nil},
		Edges: []*Edge{{"A", "B", 2, 8}, {"B", "C", 1, 1}, {"A", "C", 12, 1}, {"A", "D", 1, 0}, nil}}
	path, err := PlanStationPath(g, " C ", "C", []string{"", "A", "A", " B "})
	if err != nil || !slices.Equal(path, []string{"C", "B", "A", "B", "C"}) {
		t.Fatalf("%v %v", path, err)
	}
	for _, pair := range [][2]string{{"A", "D"}, {"A", "err"}, {"A", "A"}, {"", "C"}} {
		if _, err := PlanStationPath(g, pair[0], pair[1], nil); err == nil {
			t.Fatalf("unexpected route %v", pair)
		}
	}
	if distance := StraightLineTaskDistance(Location{0, 0}, Location{3, 4}, Location{6, 8}); distance != 10 {
		t.Fatal(distance)
	}
}
