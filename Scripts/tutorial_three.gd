extends Node2D

@onready var player = $Player


func _physics_process(delta):
	#Change to red
	if Input.is_action_just_pressed("Red"):
		player.modulate = Color("red")
	#Change to blue
	if Input.is_action_just_pressed("Blue"):
		player.modulate = Color("blue")
##Redbutton
#func _on_red_button_pressed():
	#player.modulate = Color("red")
	#print("Reddd")
	#
##Bluebutton
#func _on_blue_button_pressed():
	#player.modulate = Color("blue")
	#print("bllueeeeeee")
	
#MOve on button
func _on_move_on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")
