extends Button

func _ready():
	pass

func _on_SaveButton_pressed():
	get_node("/root/PlayerData").save_data()