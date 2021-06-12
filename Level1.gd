extends Control


func _process(_delta):
	if $tiles/side1/Exit.done + $tiles2/side1/Exit.done == 3:
		SceneChanger.change_Scene("res://TitleScreen.tscn")
