extends KinematicBody2D


var can_move = true
var speed = 64
var dead = false
var dead_count = 0

func _physics_process(_delta):
	if dead == false:
		if Input.is_action_pressed("ui_up"):
			if $RayCast2DU.is_colliding() == false:
				if can_move == true:
					$MoveAnime.get_animation("move_u").track_set_key_value(0,0,global_position)
					$MoveAnime.get_animation("move_u").track_set_key_value(0,1,global_position+ Vector2(0,-speed))
					$MoveAnime.play("move_u") 
					can_move = false
					$movingsound.play()
		elif Input.is_action_pressed("ui_down"):
			if $RayCast2DD.is_colliding() == false:
				if can_move == true:
					$MoveAnime.get_animation("move_d").track_set_key_value(0,0,global_position)
					$MoveAnime.get_animation("move_d").track_set_key_value(0,1,global_position+ Vector2(0,speed))
					$MoveAnime.play("move_d")
					can_move = false
					$movingsound.play()
		elif Input.is_action_pressed("ui_right"):
			if $RayCast2DR.is_colliding() == false:
				if can_move == true:
					$MoveAnime.get_animation("move_r").track_set_key_value(0,0,global_position)
					$MoveAnime.get_animation("move_r").track_set_key_value(0,1,global_position + Vector2(speed,0))
					$MoveAnime.play("move_r")
					can_move = false
					$movingsound.play()
		elif Input.is_action_pressed("ui_left"):
			if $RayCast2DL.is_colliding() == false:
				if can_move == true:
					$MoveAnime.get_animation("move_l").track_set_key_value(0,0,global_position)
					$MoveAnime.get_animation("move_l").track_set_key_value(0,1,global_position + Vector2(-speed,0))
					$MoveAnime.play("move_l")
					can_move = false
					$movingsound.play()
	else:
		dead_count += 1
		if dead_count == 1:
			$Robot.play("Error")
			$crash.play()

func _on_MoveAnime_animation_finished(_anim_name):
	can_move = true
	$Robot.play("Idle")
	$movingsound.stop()
