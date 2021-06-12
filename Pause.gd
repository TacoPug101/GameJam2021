extends Control

export (int) var level = 1

func _input(event):
	if event.is_action_pressed("pause"):
		get_tree().paused = not get_tree().paused
		$Control.visible = not $Control.visible

func _on_Resume_pressed():
	get_tree().paused = not get_tree().paused
	$Control.visible = not $Control.visible


func _on_Restart_Level_pressed():
	get_tree().paused = not get_tree().paused
	$Control.visible = not $Control.visible
	SceneChanger.change_Scene("res://Level" + str(level)+ ".tscn")


func _on_Main_Menu_pressed():
	get_tree().paused = not get_tree().paused
	$Control.visible = not $Control.visible
	SceneChanger.change_Scene("res://TitleScreen.tscn")
