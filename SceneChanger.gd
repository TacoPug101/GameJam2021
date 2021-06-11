extends CanvasLayer

signal scene_changed()

func change_Scene(path, delay = 0.5):
	yield(get_tree().create_timer(delay), "timeout")
	$AnimationPlayer.play("Fade")
	yield($AnimationPlayer, "animation_finished")
	assert(get_tree().change_scene(path) == OK)
	$AnimationPlayer.play_backwards("Fade")
	yield($AnimationPlayer, "animation_finished")
	emit_signal("scene_changed")
