extends TextureFrame

# class member variables go here, for example:
var score = 0 setget set_score

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
func set_score(new_value):
	score=new_value
	get_node("Label").set_text(str(score))
