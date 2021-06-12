extends CanvasLayer

signal scene_changed()

func change_Scene(path, delay = 0.5):
	yield(get_tree().create_timer(delay), "timeout")
	if path == "res://Level1.tscn":
		$AnimationPlayer.play("Fade 1")
	else:
		$AnimationPlayer.play("Fade")
	yield($AnimationPlayer, "animation_finished")
	assert(get_tree().change_scene(path) == OK)
	if path == "res://Level1.tscn":
		$AnimationPlayer.play("Fadeout 1")
	else:
		$AnimationPlayer.play_backwards("Fade")
	yield($AnimationPlayer, "animation_finished")
	emit_signal("scene_changed")
