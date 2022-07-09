extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#Now, we can get the scene, and attach it to the top node:


func _on_button_up():
	print("Hello world!")
	get_node("/root/UltraNode").check()
