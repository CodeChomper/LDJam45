extends KinematicBody2D

# https://youtu.be/BfQGXtlmE7k?t=324
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -500
const UP = Vector2(0,-1)
var motion = Vector2()
var anim

func _ready():
	print("ready")
	anim = get_node("ChomperSprite")
	anim.play()	

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
		self.position.x = 64
		self.position.y = -64
		motion.y = 0
	
	
	motion = move_and_slide(motion, UP)
	pass