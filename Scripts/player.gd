extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -1000.0

@onready var sprite_2d = $Sprite2D.modulate
@onready var player = $"."
@onready var label = $"../Win_text"



var is_red = false
var is_blue = false
var is_green = false
var is_orange = false



func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
# This checks to see what the player is collided toz

# CHECKS TO SEEEEE WHAT PLATFORM THE PLAYER IS TOUCHING --------------------------------------------------
#What happens if the player is on the red platform
func _on_area_2d_area_entered(area):
	if area.get_parent().is_in_group("red_platform"):
		print("Red collide")
		print(" ")
		is_red = true
		is_blue = false
		is_green = false
		is_orange = false
		
		if(modulate == Color(1, 0, 0, 1) and (is_red)):
			print("Player is Red and the platform is Red")
			print(" ")		
		if(modulate != Color(1, 0, 0, 1)):
			print(" The player is not red")
			get_tree().reload_current_scene()
			
#-------------------------------------------------------------------------------

#What happens if the player is on the blue platform
	if area.get_parent().is_in_group("blue_platform"):
		print("Blue collide")
		print(" ")
		is_red = false
		is_blue = true
		is_green = false
		is_orange = false
		
		if(modulate == Color(0, 0, 1, 1) and (is_blue)):
			print("Player is Blue and the platform is blu")
			print(" ")
			
		if(modulate != Color(0, 0, 1, 1)):
			print("The player is not blue")
			get_tree().reload_current_scene()
			
	#W-------------------------------------------------
	
	
	#What happens if the player is on the green platform
	if area.get_parent().is_in_group("green_platform"):
		print("Green collide")
		print(" ")
		is_red = false
		is_blue = false
		is_green = true
		is_orange = false
		if(modulate == Color(0, 0.502, 0, 1) and (is_green)):
			print("Player is green and the platform is green")
			print(" ")
			
		if(modulate != Color(0, 0.502, 0, 1)):
			print("The player is not green")
			get_tree().reload_current_scene()
			
	#--------------------------------------------------
	
		#What happens if the player is on the orange platform
	if area.get_parent().is_in_group("orange_platform"):
		print("Orange collide")
		print(" ")
		is_red = false
		is_blue = false
		is_green = false
		is_orange = true
		if(modulate == Color(1, 0.4, 0, 1) and (is_orange)):
			print("Player is orange and the platform is orange")
			print(" ")
			
		if(modulate != Color(1, 0.4, 0, 1)):
			print("The player is not orange")
			get_tree().reload_current_scene()
			
	#--------------------------------------------------
	
	# CHECKS TO SEEEEE WHAT PLATFORM THE PLAYER IS TOUCHING --------------------------------------------------
	
	#TUOTIRAL PLATFROMSSSSSSSSSS ________________________________________________________________________________
	# for tutorial Level one
	if area.get_parent().is_in_group("Tutorial_One_Red_Platform"):
		print("TELEPORT")
		get_tree().change_scene_to_file("res://Scenes/TutorialTwo.tscn")
	#---------------------------------------------------------------
	
	#For tutorial Level two
	if area.get_parent().is_in_group("Tutorial_One_BLue_Platform"):
		get_tree().change_scene_to_file("res://Scenes/tutorial_three.tscn")
	#------------------------------------------------------
	
	#Change it to have the player be teleported to the Main Menu or Level 1
	if area.get_parent().is_in_group("Tutorial_Done"):
		label.text = "🏁🏁🏁🏁🏁🏁🏁🏁"
		
	#TUOTIRAL PLATFROMSSSSSSSSSS ________________________________________________________________________________
