# script: spawner_enemy

extends Node


const enemy_meteor2 = preload("res://Scene/enemy_meteor2.tscn")

func _ready():
	spawn()
	pass

func spawn():
	while true:
		randomize()
		
		
		var enemy = enemy_meteor2.instance()
		
		var pos = Vector2()
		pos.x   = rand_range(0+16, utils.view_size.width-16)
		pos.y   = 0-16
		enemy.set_pos(pos)
		get_node("container").add_child(enemy)
		yield(utils.create_timer(rand_range(5.5, 1.25)), "timeout")
		
		
	pass

