extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	get_node("anim").play("fade_out")
	yield(get_node("anim"), "finished")
	queue_free()