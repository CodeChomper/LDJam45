extends TextEdit

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var print_line = false
var cur_line = 0
var cur_column = 0
var cur_path = "~"

# Called when the node enters the scene tree for the first time.
func _ready():
	self.grab_focus()
	cur_line = self.cursor_get_line()
	init()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func init():
	print_file("res://TextFiles/tempLoadText.tres")
	#print_file("res://TextFiles/LoadingScreen.tres")
	pass

func print_file(path):
	var file = File.new()
	file.open(path, File.READ)
	
	while !file.eof_reached():
		
		yield(get_tree().create_timer(0.05),"timeout")
		
		var line = file.get_line()
		self.text = self.text + "\n" + line
		cur_line += 1
		self.cursor_set_line(cur_line)
	
	file.close()
	cur_line += 1
	self.cursor_set_line(cur_line)
	add_user_path()

func add_user_path():
	self.insert_text_at_cursor("user@codechomper $ " + cur_path + ": ")




func _on_TextEdit_text_changed():
	if self.cursor_get_column() == 0:
		print("last line: " + self.get_line(self.cursor_get_line() - 1))
		add_user_path()
	pass # Replace with function body.

func _process(delta):
	cur_column = self.cursor_get_column()
	if Input.is_action_just_pressed("ui_left"):
		print("left")
		self.cursor_set_column(cur_column + 1)