extends MeshInstance

var check_only_once = true
func _process(delta):
	var t = get_parent().get_node("Camera").get_translation()
	look_at(Vector3(t), Vector3.UP)
	rotation.y = lerp_angle( rotation.y, atan2( get_parent().get_node("Camera").get_translation().x, get_parent().get_node("Camera").get_translation().z ), 1 )
