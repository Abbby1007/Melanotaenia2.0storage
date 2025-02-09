extends Node2D

@onready var player = $Player

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# This button when clicked changes the players sprite to Red
func _on_button_pressed():
	print("REDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD")
	player.modulate = Color("red")

#Blue button
func _on_blue_button_pressed():
	print("BLUEEEEEEEEEEEEEEEEEEEEEEEEEEE")
	player.modulate = Color("blue")
