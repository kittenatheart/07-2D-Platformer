extends Node2D

var score = 0
var lives = 0
var kills = 0

var save_path = "res://savegame.sav"
var config = ConfigFile.new()
var load_data = config.load(save_path)
func save_data():
	config.set_value("Save","score",score)
	config.set_value("Save","lives",lives)
	config.set_value("Save","kills",kills)
	config.save(save_path)
func load_data():
	score = config.get_value("Save","score")
	lives = config.get_value("Save","lives")
	kills = config.get_value("Save","kills")

