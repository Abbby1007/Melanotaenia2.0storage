extends Node2D

@onready var player = $Player

#Redbutton
func _on_red_button_pressed():
	player.modulate = Color("red")
	print("Reddd")
	
#Bluebutton
func _on_blue_button_pressed():
	player.modulate = Color("blue")
	print("bllueeeeeee")
	
	
