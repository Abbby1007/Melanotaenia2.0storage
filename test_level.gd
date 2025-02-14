extends Node2D

@onready var player = $Player




var is_red = false
var is_blue = true

#Red Button ____________________________________
func _on_red_button_pressed():
	print("REDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD")
	player.modulate = Color("red")
# Red BUtton ___________________________________

#Blue button______________________________________
func _on_blue_button_pressed():
	print("BLUEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE")
	player.modulate = Color("blue")
#Blue butotn_______________________________________
