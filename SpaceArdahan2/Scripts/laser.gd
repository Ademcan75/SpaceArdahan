extends Area2D

export var velocity=Vector2()
const scn_flare = preload("res://Scene/flare.tscn")

func _ready():
	set_process(true)
	create_flare()
	
	yield(get_node("VisibilityNotifier2D"),"exit_screen")
	queue_free()
	pass
func _process(delta):
	translate(velocity * delta)
	pass
func create_flare():
	var flare = scn_flare.instance()
	flare.set_pos(get_pos())
	utils.main_node.add_child(flare)
	pass
