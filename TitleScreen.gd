extends Control


	

func _on_Start_pressed():
	$Buttons.layer = 0
	SceneChanger.change_Scene("res://Level1.tscn")


func _on_Exit_pressed():
	get_tree().quit()


func _on_Timer_timeout():
	$Buttons.layer = 1
