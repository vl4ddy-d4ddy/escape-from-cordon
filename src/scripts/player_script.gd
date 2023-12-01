extends CharacterBody2D


@export var SPEED: float = 10
@export var SPRINT_MULTIPLIER: float = 1.5


func _physics_process(delta):

	var movement = _getMovement()
	move_and_slide()
	lookTowardsCursor()


func lookTowardsCursor():
	if ( _getRotation() >= 90 or _getRotation() <= -90): # checks if the player is rotated between 90 and -90 degrees
		var scale = get_global_scale()
		scale.y = -1
		set_global_scale(scale)
	else:
		var scale = get_global_scale()
		scale.y = 1
		set_global_scale(scale)

	var mousePosition = get_global_mouse_position()
	look_at(mousePosition)



func _getRotation():
	var rotation = get_global_rotation_degrees()
	return rotation

func _getMovement():  # move_up | move_down | move_right | move_left | move_sprint [OPTIONAL]
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")

	if ( Input.is_action_pressed("move_sprint") ):
		velocity = direction * SPEED * 40 * SPRINT_MULTIPLIER # ignore the *40
	else:
		velocity = direction * SPEED * 40

	return velocity

