extends Camera

<<<<<<< Updated upstream

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


if Input.is_action_pressed(cam_right):
	velocity += -transform.basis.x * speed
=======
func _process(delta):
	if Input.is_action_pressed("ui_left"):
		rotation.y += 0.01
	if Input.is_action_pressed("ui_right"):
		rotation.y -= 0.01
		
	if rotation.y < -2.9:
		rotation.y = -2.9
	if rotation.y > -0.15:
		rotation.y = -0.15

func _on_right_button_down():
	rotation.y -= 0.01
>>>>>>> Stashed changes
