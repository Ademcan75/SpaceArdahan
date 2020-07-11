extends Sprite



func _ready():
	self.set_process_input(true)
	
#////////////////////////////////////
func _input(event):
	var silah= self.get_pos()
	var i = 0
	if(Input.is_key_pressed(KEY_Z)):
			while(i<15):
				silah.y-=30
				i+=1

			self.set_pos(silah)
	elif(Input.is_key_pressed(KEY_X)):
		silah.y = 0
		self.set_pos(silah)