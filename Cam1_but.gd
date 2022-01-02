extends CheckBox

func _on_Cam1_but_pressed():
	get_parent().get_node("Cam1/Cam1").visible=true
