extends Sprite




func _on_Area2D_body_entered(body):
	if body.name == "RobotO":
		body.dead = true
		yield(get_tree().create_timer(1),"timeout")
		SceneChanger.change_Scene("res://Level5.tscn")
		SceneChanger.maddness += 1
	if body.name == "RobotB":
		body.dead = true
		yield(get_tree().create_timer(1),"timeout")
		SceneChanger.change_Scene("res://Level5.tscn")
		SceneChanger.maddness += 1


func _on_Button_body_entered(body):
	if body.name == "RobotO":
		get_node("/root/Level5/tiles2/side1/CTile3").frame = 7
		$AnimationPlayer.play("move")
	if body.name == "RobotB":
		get_node("/root/Level5/tiles2/side1/CTile3").frame = 7
		$AnimationPlayer.play("move")
		

func _on_Button_body_exited(body):
	if body.name == "RobotO":
		get_node("/root/Level5/tiles2/side1/CTile3").frame = 6
		$AnimationPlayer.play_backwards("move")
	if body.name == "RobotB":
		get_node("/root/Level5/tiles2/side1/CTile3").frame = 6
		$AnimationPlayer.play_backwards("move")
