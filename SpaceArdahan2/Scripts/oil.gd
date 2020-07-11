extends CanvasLayer

var can = 100
func _ready():
	set_fixed_process(true)
	set_process_input(true)
	pass
func _fixed_process(delta):
	if(can < 1):
		get_tree().change_scene("res://Sahneler/SAHNE2.tscn")
		
		
		pass
		
	else:
		get_node("Control/ProgressBar").set_value(can)
	can -= delta * 2