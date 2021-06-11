extends CanvasLayer


func _ready():
	$AnimationPlayer.play("startingscreen")


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "startingscreen":
		SceneChanger.change_Scene("res://TitleScreen.tscn")
