extends TextEdit

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cur_line = 0
var cur_column = 0
var cur_path = "~"
var cur_min_column = 0
var commands = []

# Called when the node enters the scene tree for the first time.
func _ready():
	
	self.grab_focus()
	cur_line = self.cursor_get_line()
	init()
	pass # Replace with function body.


func init():
	#print_file("res://TextFiles/BootText.tres")
	print_file("res://TextFiles/TempLoadText.tres")
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
	self.insert_text_at_cursor("json@codechomper $ " + cur_path + ": ")
	cur_min_column = cursor_get_column()
	print(str(cur_min_column))

# warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_just_pressed("ui_left"):
		print("left")
		self.cursor_set_column(cur_column + 1)
	
	if Input.is_action_just_pressed("ui_up"):
		self.cursor_set_line(self.cursor_get_line() + 2)
		
	if Input.is_action_just_pressed("ui_accept"):
		var last_line = self.get_line(self.cursor_get_line() - 1)
		var command = last_line.right(last_line.find(": ",0) + 2)
		print(command)
		commands.push_front(command)
		run_command(command)
	
	if Input.is_action_pressed("Delete"):
		if self.cursor_get_column() < cur_min_column:
			self.insert_text_at_cursor(" ")
	
	
	
	
	get_tree().set_input_as_handled()
	
		#self.select(cur_line,cur_column,cur_line,cur_column)
	
	cur_line = self.cursor_get_line()
	cur_column = self.cursor_get_column()

func _input(event):
	if Input.is_mouse_button_pressed(BUTTON_LEFT) or Input.is_mouse_button_pressed(BUTTON_RIGHT):
		get_tree().set_input_as_handled()
		self.cursor_set_line(cur_line)
		self.cursor_set_column(cur_column)
		deselect()
	

func run_command(command):
	command = command.to_lower()
	match command:
		'?':
			print_file("res://TextFiles/Help.tres")
		'h':
			print_file("res://TextFiles/Help.tres")
		"help":
			print_file("res://TextFiles/Help.tres")
		"clear":
			self.text = ""
		"cls":
			self.text = ""
		_:
			insert_text_at_cursor("Unknown Command: [ " + command + " ] enter ? for help\n")
			add_user_path()
			






