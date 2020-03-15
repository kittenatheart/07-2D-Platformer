extends Button

var position = 0

var save_path = "res://save-file.cfg"
var config = ConfigFile.new()
var load_response = config.load(save_path)

func _ready():
	pass 
	
func loadValue():
	position = config.get_value(position)
