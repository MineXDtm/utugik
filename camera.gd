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
	if rotation.y < -2.3:
		get_parent().get_node("CameraIcon").visible=false
		get_parent().get_node("Control").visible=false
	elif rotation.y > -2:
		get_parent().get_node("CameraIcon").visible=false
		get_parent().get_node("Control").visible=false
	else:
		get_parent().get_node("CameraIcon").visible=true
		
func _on_Area_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			print("work")
			get_parent().get_node("Control").visible=true
