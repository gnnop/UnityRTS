extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func check():
	$Menu.get_node("MainMenu").visible = false
	var scene = load("res://serverState/Game.tscn")
	var scene_instance = scene.instance()
	scene_instance.set_name("game_world")
	add_child(scene_instance)
	print("Hey Jude")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
