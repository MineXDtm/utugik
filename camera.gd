extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


if Input.is_action_pressed(cam_right):
	velocity += -transform.basis.x * speed
