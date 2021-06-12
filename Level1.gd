extends Control

var exit_level = 0

func _process(_delta):
	if $tiles/side1/Exit.done + $tiles2/side1/Exit.done == 3:
		exit_level += 1
		if exit_level == 1:
			$exit_timer.start()


func _on_exit_timer_timeout():
	SceneChanger.change_Scene("res://Level2.tscn")
