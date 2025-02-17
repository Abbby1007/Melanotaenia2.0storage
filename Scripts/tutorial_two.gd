extends Node2D

@onready var player = $Player


func _physics_process(delta):
	if Input.is_action_just_pressed("Red"):
		player.modulate = Color("red")
#red button
#func _on_red_button_pressed():
	#player.modulate = Color("red")


func _on_button_pressed():
	player.modulate = Color("red")
