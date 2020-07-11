extends Particles2D
var kutu1 = null
var kutu2= null

func _ready():
	kutu1 = RectangleShape2D.new()
	kutu2 = RectangleShape2D.new()
	
	var Meteorsmall= get_node("res://Sahneler/Sahne1.tscn/Meteorsmall")
	kutu1.set_extents(Vector2(get_texture().get_size().width/2, get_texture().get_size().height/2))
	kutu2.set_extents(Vector2(Meteorsmall.get_texture().get_size().width/2 , Meteorsmall.get_texture().get_size().height/2)) 
	if (kutu1.collide(get_transform(), kutu2 , Meteorsmall.get_transform())):
		 print("degdi")

