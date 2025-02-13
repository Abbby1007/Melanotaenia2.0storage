extends Node2D

@onready var player = $Player

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


var is_red = false
var is_blue = true

func _on_color_choice_item_selected(index):
	match index:
		0: is_red = true #red
		0: is_blue = false
		1: is_red = false #blue
		1: is_blue = true
		#0:print("The player should not be red")
		#0:player.modulate = Color("red") # redd
		#1:print("The player shoudl be blue") #blue
		#1:player.modulate = Color("blue")

#start button
func _on_start_pressed():
	if(is_red):
		print("player should be red")
		player.modulate = Color("red")
	elif(is_blue):
		print("player should be blue")
		player.modulate = Color("blue")
	
	pass # Replace with function body.
