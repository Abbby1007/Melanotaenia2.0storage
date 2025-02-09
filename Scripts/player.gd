extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -1000.0

@onready var sprite_2d = $Sprite2D.modulate


var is_red = false
var is_blue = true



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
	
# This checks to see what the player is collided to

#What happens if the player is on the red platform
func _on_area_2d_area_entered(area):
	if area.get_parent().is_in_group("red_platform"):
		print("Red collide")
		print(" ")
		is_red = true
		is_blue = false
		if(modulate == Color(1, 0, 0, 1) and (is_red)):
			print("Player is Red and the platform is Red")
			print(" ")		
#-------------------------------------------------------------------------------

#What happens if the player is on the blue platform
	if area.get_parent().is_in_group("blue_platform"):
		print("Blue collide")
		print(" ")
		is_red = false
		is_blue = true
		if(modulate == Color(0, 0, 1, 1) and (is_blue)):
			print("Player is Blue and the platform is blu")
			print(" ")
	#W-------------------------------------------------
