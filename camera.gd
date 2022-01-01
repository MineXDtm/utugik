extends Camera

func _process(delta):
	if Input.is_key_pressed(KEY_0):
		rotation.y += 0.1
