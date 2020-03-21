extends Node


signal updated
signal died
signal reset

var score: = 0 setget set_score
var deaths: = 0 setget set_deaths
var kills = 0 setget set_kills
var level = 0

var save_path = "res://savegame.sav"
var config = ConfigFile.new()
var load_data = config.load(save_path)

func reset():
	self.score = 0
	self.deaths = 0
	self.kills = 0
	emit_signal("reset")


func set_score(new_score: int) -> void:
	score = new_score
	emit_signal("updated")


func set_deaths(new_value: int) -> void:
	deaths = new_value
	emit_signal("died")
	
	
func set_kills(new_kills: int) -> void:
	kills = new_kills
	emit_signal("updated")


func save_data():
	config.set_value("Save","score",score)
	config.set_value("Save","deaths",deaths)
	config.set_value("Save","kills",kills)
	config.save(save_path)
	
func load_data():
	score = config.get_value("Save","score")
	deaths = config.get_value("Save","deaths")
	kills = config.get_value("Save","kills")
	if level == 1:
		get_tree().change_scene("res://src/Levels/Level01.tscn")
	if level == 2:
		get_tree().change_scene("res://src/Levels/Level02.tscn")