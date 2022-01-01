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
	print(rotation)
	if rotation.y < -1.8:
		get_parent().get_node("MeshInstance").visible=false
	elif rotation.y > -1.4:
		get_parent().get_node("MeshInstance").visible=false
	else:
		get_parent().get_node("MeshInstance").visible=true

func _onready():
	get_tree().change_scene("res://Control.tscn")
