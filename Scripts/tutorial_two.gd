extends Node2D

@onready var player = $Player

#red button
func _on_red_button_pressed():
	player.modulate = Color("red")
