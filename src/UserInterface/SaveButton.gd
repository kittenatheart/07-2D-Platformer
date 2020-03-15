extends Button

var position = "res://Actors/Player.tscn"

var save_path = "res://save-file.cfg"
var config = ConfigFile.new()


func _ready():
	pass 

func saveValue():
	config.set_value(position)
	config.save(save_path)