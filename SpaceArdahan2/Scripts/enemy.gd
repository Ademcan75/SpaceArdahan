extends Area2D
export var armor =2 setget set_armor
export var velocity = Vector2()

func _ready():
	set_process(true)
	add_to_group("enemy")
	connect("area_enter", self,"_on_area_enter")
	pass

func _process(delta):
	translate(velocity * delta)
	if get_pos().y-16 >= get_viewport_rect().size.height:
		queue_free()
	pass
func _on_area_enter(other):
	if other.is_in_group("Sahne1"):
		other.armor -= 1
		queue_free()
func set_armor(new_value):
	armor=new_value
	if(armor <= 0):
		audio_player.play("laser_ship")
		utils.find_node("tex_score").score += 5
		queue_free()
		
	pass

