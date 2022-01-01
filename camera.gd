extends Camera

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		rotation.y += 0.01
	if Input.is_action_pressed("ui_right"):
		rotation.y -= 0.01
		
	if rotation.y < -2.9:
		rotation.y = -2.9
	if rotation.y > -0.15:
		rotation.y = -0.15

	if rotation.y < -2.4:
		get_parent().get_node("Control/cameras").visible=false
	elif rotation.y > -0.7:
		get_parent().get_node("Control/cameras").visible=false
	else:
		get_parent().get_node("Control/cameras").visible=true


func _on_cameras_pressed():
	pass # Replace with function body.

