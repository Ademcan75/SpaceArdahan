extends CanvasLayer

var benzin = 100
func _ready():
	set_fixed_process(true)
	set_process_input(true)
	pass
func _input(event):
	if event.is_action_pressed("ui_accept"):
		pass
		
func _fixed_process(delta):
	if(benzin < 1):
		
		pass
		
	else:
		get_node("Control/ProgressBar").set_value(benzin)
	benzin -= delta * 2
	if(benzin < 2):
		get_tree().change_scene("res://Sahneler/GameOver.tscn")