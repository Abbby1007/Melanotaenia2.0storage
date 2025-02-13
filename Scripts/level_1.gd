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

#start button
func _on_start_button_pressed():
	
	pass # Replace with function body.
	


func _on_option_button_item_selected(index):
	match index:
		0:print("15🕓")
		1:print("30🕓")
		2:print("45🕓")
		3:print("60🕓")
