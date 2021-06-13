extends Control

var levels = false
func _ready():
	$AnimationPlayer.play("buttons")
	for i in range(get_node("/root/SceneChanger").max_level):
		get_node("Buttons/Buttons and stuff/Levels/Level"+str(i+1)).modulate = Color(1,1,1)
		
	

func _on_Start_pressed():
	$Buttons.layer = 0
	SceneChanger.change_Scene("res://Level1.tscn")


func _on_Exit_pressed():
	get_tree().quit()


func _on_Timer_timeout():
	$Buttons.layer = 1


func _on_Level_pressed():
	if levels == false:
		$"Buttons/Buttons and stuff/LevelsAnime".play("levels")
		levels = not levels
	else:
		$"Buttons/Buttons and stuff/LevelsAnime".play_backwards("levels")
		levels = not levels


func _on_Level1_pressed():
	SceneChanger.change_Scene("res://Level1.tscn")
	$Buttons.layer = 0


func _on_Level2_pressed():
	if get_node("/root/SceneChanger").max_level >= 2:
		SceneChanger.change_Scene("res://Level2.tscn")
		$Buttons.layer = 0
		


func _on_Level3_pressed():
	if get_node("/root/SceneChanger").max_level >= 3:
		SceneChanger.change_Scene("res://Level3.tscn")
		$Buttons.layer = 0


func _on_Level4_pressed():
	if get_node("/root/SceneChanger").max_level >= 4:
		SceneChanger.change_Scene("res://Level4.tscn")
		$Buttons.layer = 0


func _on_Level5_pressed():
	if get_node("/root/SceneChanger").max_level >= 5:
		SceneChanger.change_Scene("res://Level5.tscn")
		$Buttons.layer = 0


func _on_Level6_pressed():
	if get_node("/root/SceneChanger").max_level >= 6:
		SceneChanger.change_Scene("res://Level6.tscn")
		$Buttons.layer = 0


func _on_Level7_pressed():
	if get_node("/root/SceneChanger").max_level >= 7:
		SceneChanger.change_Scene("res://Level7.tscn")
		$Buttons.layer = 0


func _on_Level8_pressed():
	if get_node("/root/SceneChanger").max_level >= 8:
		SceneChanger.change_Scene("res://Level8.tscn")
		$Buttons.layer = 0
