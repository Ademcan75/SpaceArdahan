extends Area2D
var armor = 9 setget set_armor
const scn_laser = preload("res://Scene/rawgun.tscn")



func _ready():
#	set_fixed_process(true)
	set_process(true)
	self.set_process_input(true)
	add_to_group("Sahne1")
	
	yield(utils.create_timer(0.5),"timeout")
	
	shoot()
func _process(delta):
		# tracking mouse
	var motion = (utils.mouse_pos.x - get_pos().x) * 0.2
	translate(Vector2(motion, 0))
	
	# clamping to view
	var pos = get_pos()
	pos.x   = clamp(pos.x, 0+16, utils.view_size.width-16)
	set_pos(pos)
	pass


func shoot():
	while true:
		var pos_left = get_node("NaMLu/sol").get_global_pos()
		var pos_right = get_node("NaMLu/sag").get_global_pos()
		create_laser(pos_left)
		create_laser(pos_right)
		audio_player.play("laser_ship")
		yield(utils.create_timer(0.50),"timeout")
	pass

func set_armor(new_value):
	armor=new_value
	if armor <= 0:
		audio_player.play("hit_ship")
		queue_free()
	pass

func create_laser(pos):
	var laser = scn_laser.instance()
	laser.set_pos(pos)
	utils.main_node.add_child(laser)
	pass

func _on_sen_sag_pressed():
	var yer = Vector2()
	yer.x+=10
func _on_ben_solemet_pressed():
	var yer = Vector2()
	yer.x-=10
	set_pos(Vector2())
