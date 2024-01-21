extends CharacterBody2D

const SPEED = 300.0

func auto_shooting(_body):
	pass

func damaged(_body):
	pass

func die(_body):
	queue_free()

func _physics_process(_delta):
	velocity = Vector2(0,0)
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		
	elif Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		
	if Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
	
	elif Input.is_action_pressed("ui_down"):
		velocity.y = SPEED
		
	velocity.normalized()

	#motion_mode = 1
	move_and_slide()
	



func _on_area_2d_body_entered(_body):
	Lvlmanager.testlog += 1
