extends Node2D

@onready var player = $Player

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#Change to red
	if Input.is_action_just_pressed("Red"):
		player.modulate = Color("red")
	#Change to blue
	if Input.is_action_just_pressed("Blue"):
		player.modulate = Color("blue")
	#Change to green
	if Input.is_action_just_pressed("Green"):
		player.modulate = Color(0,0.502,0,1)
	#Change to Orange
	if Input.is_action_just_pressed("Orange"):
		player.modulate = Color(1, 0.4, 0, 1)
