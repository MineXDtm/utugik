extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$anim1.play("menuanim")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _exit(exit):
	get_tree().quit()


func _on_Timer_timeout():
	$bg.rect_scale.x =2 
	$bg.rect_position.x = -500
	yield(get_tree().create_timer(1),"timeout")
	$bg.rect_scale.x =1 
	$bg.rect_position.x = 0



func _on_Button2_pressed():
	$intro/CenterContainer/Label.text = "вы не."
	$intro/AnimationPlayer.play("intro")

func _on_Button3_pressed():
	$intro/CenterContainer/Label.text = "вы не играть"
	$intro/AnimationPlayer.play("intro")
	$intro/AnimationPlayer.connect("animation_finished", self,"_exit")

func _on_Button4_pressed():
	$intro/CenterContainer/Label.text = "вы играть не играя"
	$intro/AnimationPlayer.play("intro")


func _on_Button_pressed():
	get_tree().change_scene("res://game.tscn")
