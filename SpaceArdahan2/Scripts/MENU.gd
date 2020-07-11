extends MenuButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	pass


func _on_ONAY_confirmed():
	get_tree().quit()

func _on_IKIS_pressed():
	get_node("ONAY").show()


func _on_YENI_OYUN__pressed():
	get_tree().change_scene("res://Sahneler/Sahne1.tscn")