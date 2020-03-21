extends Button

func _ready():
	pass
	
func _on_LoadButton_pressed():
	get_node("/root/PlayerData").load_data()
	
