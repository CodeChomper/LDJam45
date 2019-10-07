extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		self.visible = false
	if Input.is_action_just_released("ui_cancel"):
		self.visible = false