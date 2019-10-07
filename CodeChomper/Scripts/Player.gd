extends KinematicBody2D

# https://youtu.be/BfQGXtlmE7k?t=324
const GRAVITY = 20
const SPEED = 300
const JUMP_HEIGHT = -600
const UP = Vector2(0,-1)
var motion = Vector2()
var anim
var start_x = 0

func _ready():
	start_x = self.position.x
	print("ready")
	anim = get_node("ChomperSprite")
	anim.play()	

func _input(event):
	if Input.is_action_just_pressed("ui_cancel"):
		print("going back to console")
		Global.goto_scene("res://Scenes/Console.tscn")



func _physics_process(delta):
	motion.y += GRAVITY
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		anim.flip_h = false
		$ChomperSprite/EyeLids.flip_h = false
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		anim.flip_h = true
		$ChomperSprite/EyeLids.flip_h = true
	else:
		motion.x *= 0.9
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			$JumpSound.play()
			motion.y = JUMP_HEIGHT
	
	# Handle animation state
	if is_on_floor():
		if(abs(motion.x) > 9):
			anim.set_animation("Walking")
		else:
			anim.set_animation("Standing")
	else:
		anim.set_animation("Jumping")

	
	#Handle falling off screen
	if motion.y > 3000:
		$DeathSound.play()
		self.position.x = start_x
		self.position.y = -64
		motion.y = 0
	
	
	motion = move_and_slide(motion, UP)
	pass

func _on_Area2D_area_entered(area):
	yield(get_tree().create_timer(0.4),"timeout")
	queue_free()
