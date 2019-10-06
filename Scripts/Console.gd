extends TextEdit

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cur_line = 0
var cur_column = 0
var cur_path = "home"
var cur_min_column = 0
var cur_max_row = 0
var commands = []
var command_index = 0
var randy = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	self.grab_focus()
	self.clear_colors()
	self.add_color_override("font_color",Color.limegreen)
	self.add_keyword_color("ls", Color.aqua)
	self.add_keyword_color("clear", Color.aqua)
	self.add_keyword_color("cd", Color.aqua)
	self.add_keyword_color("exit", Color.red)
	cur_line = self.cursor_get_line()
	init()
	
	pass # Replace with function body.


func init():
	#print_file("BootMessages")
	print_file("home/TempLoadText.res")
	pass

func print_file(path):
	self.select(cur_line + 1, 0, self.get_line_count(), 10000000000000000)
	self.cut()
	var file = File.new()
	if !file.file_exists("res://TextFiles/" + path):
		self.text = self.text + "File missing!\n\n"
		cur_line += 2
		self.cursor_set_line(cur_line)
		add_user_path()
		return
	file.open("res://TextFiles/" + path, File.READ)
	
	while !file.eof_reached():
		var hang = randy.randf_range(0, 100)
		var wait_time = 0.05
		if hang < 20:
			wait_time = 0.2
		yield(get_tree().create_timer(wait_time),"timeout")
		
		var line = file.get_line()
		self.text = self.text + "\n" + line
		cur_line += 3
		self.cursor_set_line(cur_line)
	
	file.close()
	cur_line += 1
	self.cursor_set_line(cur_line)
	add_user_path()

func add_user_path():
	self.select(self.cursor_get_line(), 0, self.get_line_count(),10000000000)
	self.cut()
	self.insert_text_at_cursor("json@codechomper:" + cur_path + " $ ")
	var og_text = self.text
	cur_min_column = cursor_get_column()
	cur_max_row = cursor_get_line()
	self.insert_text_at_cursor("\n")
	self.cursor_set_line(cur_max_row,false)
	self.cursor_set_column(cur_min_column)
	cur_column = cur_min_column
	self.cursor_set_column(cur_column)
	
	
	

# Handle keyboard input my way instead of TextEdit's way
# warning-ignore:unused_argument
func _process(delta):
	# Don't buble up event
	get_tree().set_input_as_handled()
	
	# Don't let the user nav cursor with left arrow. keeps them in cur_column
	if Input.is_action_just_pressed("ui_left"):
		print("left")
		self.cursor_set_column(cur_column + 1)
	
	# Handles like a .bash_history recalling commands on up arrow pressed
	if Input.is_action_just_pressed("ui_up"):
		self.cursor_set_line(self.cursor_get_line() + 2)
		if commands.size() > 0:
			self.select(self.cursor_get_line()-1, cur_min_column, self.get_line_count(),10000000000)
			self.cut()
			print("line count" + str(get_line_count()))
			
			add_user_path()
			self.insert_text_at_cursor(commands[command_index])
			cur_column = self.cursor_get_column()
			command_index = (command_index + 1) % commands.size()
	
	if Input.is_action_just_released("ui_down"):
		self.cursor_set_line(self.cursor_get_line() - 1)
		self.cursor_set_column(cur_min_column)
	
	# Submit commands, puts them in the command history and resets the history index to 0
	# If a recalled command is submited command isn't pushed into history and index is set back 1	
	if Input.is_action_just_pressed("ui_accept"):
		var last_line = self.get_line(self.cursor_get_line() - 1)
		var command = last_line.right(last_line.find("$",0) + 2)
		print(command)
		if commands.find(command) == -1:
			commands.push_front(command)
			command_index = 0
		else:
			command_index -= 1
		
		run_command(command)
	
	if Input.is_action_pressed("Delete"):
		if self.cursor_get_column() < cur_min_column:
			self.insert_text_at_cursor(" ")
	
	
	cur_line = self.cursor_get_line()
	cur_column = self.cursor_get_column()
	#self.cursor_set_line(cur_line)

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
			print_file("home/help.res")
		
		'h':
			print_file("home/help.res")
		
		"help":
			print_file("home/help.res")
		
		"clear":
			self.text = "\n\n"
			self.cursor_set_line(self.get_line_count(),false)
			add_user_path()
		
		"cls":
			self.text = "\n\n"
			self.cursor_set_line(self.get_line_count(),false)
			add_user_path()
		
		"ls":
			print_file(cur_path + "/ls.res")
			
		
		"exit":
			get_tree().quit()
		_:
			insert_text_at_cursor("Unknown Command: [ " + command + " ] enter ? for help\n")
			add_user_path()
			






