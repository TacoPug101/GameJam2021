extends Node2D

export (int) var exit = 1
export (Texture) var light
export (Texture) var non_light
var done = 0

func _ready():
	$Sprite.frame = exit


func _on_body_entered(body):
	if body.name == "RobotO":
		done = 2
		$Sprite.texture = light
		$Particles2D.emitting = true
	if body.name == "RobotB":
		done = 1
		$Sprite.texture = light
		$Particles2D.emitting = true


func _on_Area2D_body_exited(body):
	if body.name == "RobotO":
		done = 0
		$Sprite.texture = non_light
		$Particles2D.emitting = false
	if body.name == "RobotB":
		done = 0
		$Sprite.texture = non_light
		$Particles2D.emitting = false
