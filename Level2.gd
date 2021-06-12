extends Control

var finished = 0
var sound = 0

func _process(_delta):
	if $tiles/side1/Exit.done + $tiles2/side1/Exit.done == 3:
		finished += 1
		if finished == 1:
			$DFinish.play()
			$exit_timer.start()
	elif $tiles/side1/Exit.done + $tiles2/side1/Exit.done == 2 or $tiles/side1/Exit.done + $tiles2/side1/Exit.done == 1:
		sound += 1
		if sound == 1:
			$SFinish.play()
	else:
		sound = 0

func _on_exit_timer_timeout():
	SceneChanger.change_Scene("res://Level3.tscn")
