extends AnimatedSprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var timer
# Called when the node enters the scene tree for the first time.
func _ready():
	self.set_animation("Blink")
	$Timer.start()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	self.set_animation("Blink")
	self.frame = 0
	self.play();
	$Timer.set_wait_time (rand_range(2,6))
	$Timer.start(0)
	pass # Replace with function body.
