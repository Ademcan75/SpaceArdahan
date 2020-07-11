extends Area2D

var sag= Input.is_action_pressed("sag_tus")
var sol= Input.is_action_pressed("sol_tus")


func _ready():
#	set_fixed_process(true)
	set_process(true)
	self.set_process_input(true)

func _fixed_process(delta):
	
	sag= Input.is_action_pressed("sag_tus")
	sol= Input.is_action_pressed("sol_tus")
	
	if sag:
		set_linear_velocity(Vector2(200, get_linear_velocity().y))
	elif sol:
		set_linear_velocity(Vector2(-200, get_linear_velocity().y))
	
	else:
		set_linear_velocity(Vector2(0,0))


func _input(event):
	if(event.type == InputEvent.KEY):
		var yer = self.get_pos()
		
		
		
		if(event.scancode == KEY_RIGHT):
			yer.x+=30
			self.set_pos(yer)
		if(event.scancode == KEY_LEFT):
			yer.x-=30
			self.set_pos(yer)
	if(event.type == InputEvent.MOUSE_BUTTON):
		if(event.button_index == BUTTON_RIGHT):
			self.set_pos(Vector2(event.x, event.y))


func _process(delta):
	if(Input.is_key_pressed(KEY_ESCAPE)):
		self.get_tree().quit()


