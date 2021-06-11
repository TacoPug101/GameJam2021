extends CanvasLayer


func _ready():
	$AnimationPlayer.play("startingscreen")


func _on_AnimationPlayer_animation_finished(anim_name):
	pass # Replace with function body.
