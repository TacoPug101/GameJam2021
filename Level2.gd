extends Control

var finished = 0

func _process(_delta):
	if $tiles/side1/Exit.done + $tiles2/side1/Exit.done == 3:
		finished += 1
		if finished == 1:
			$exit_timer.start()

func _on_exit_timer_timeout():
	SceneChanger.change_Scene("res://TitleScreen.tscn")
