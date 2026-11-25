// Field names and JSON tags recovered from the executable's Go type metadata.
package main

import "time"

type MapRequest struct {
	Id       int       `json:"id"`
	Name     string    `json:"name"`
	Path     string    `json:"path"`
	Version  string    `json:"version"`
	CreateTi time.Time `json:"createTi"`
	Data     []uint8   `json:"data"`
}

type VehRequest struct {
	Id         string `json:"code"`
	Ip         string `json:"ip"`
	Port       int    `json:"port"`
	Name       string `json:"name"`
	Type       string `json:"type"`
	Brand      string `json:"brand"`
	RadarBrand string `json:"radarBrand"`
	MotorBrand string `json:"motorBrand"`
}

type TaskRequest struct {
	Id         int       `json:"id"`
	TaskType   string    `json:"taskType"`
	PubUser    int       `json:"pubUser"`
	Pry        string    `json:"pry"`
	Status     int       `json:"status"`
	Desc       string    `json:"desc"`
	CreateTime time.Time `json:"createTime"`
	FinTime    time.Time `json:"finTime"`
	Del        bool      `json:"del"`
	VehId      string    `json:"vehNo"`
	StartPos   string    `json:"startPos"`
	EndPos     string    `json:"endPos"`
	RoadPoint  string    `json:"waypoint"`
	EndPoint   string    `json:"endPoint"`
	IsCycle    bool      `json:"isCycle"`
	TaskName   string    `json:"taskName"`
	MaxSpeed   string    `json:"maxSpeed"`
	RunHeight  float64   `json:"runHeight"`
}

type TaskChainRequest struct {
	Id        int    `json:"id"`
	ChainName string `json:"chainName"`
	Desc      string `json:"desc"`
	ChainJson string `json:"chainJson"`
	Status    int    `json:"status"`
}
