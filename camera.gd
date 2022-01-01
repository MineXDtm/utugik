extends Camera



# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		rotation.y += 0.01
	if Input.is_action_pressed("ui_right"):
		rotation.y -= 0.01
		
	if rotation.y < -2.9:
		rotation.y = -2.9
	if rotation.y > -0.15:
		rotation.y = -0.15

