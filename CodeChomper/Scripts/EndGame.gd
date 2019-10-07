extends RichTextLabel

func _input(event):
	if Input.is_action_pressed("ui_cancel"):
		Global.goto_scene("res://Scenes/Console.tscn")