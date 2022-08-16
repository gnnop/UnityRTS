extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"



#Now, in order to create the world, we can harvest the nodes from the map editor.
#This should later be optimized into a pre-existing array:
#get_used_cells()
#First, it looks like I might want to place an abstraction on the UI though...






var neighborhood = [Vector2(1, 0), Vector2(0, 1), Vector2(1, -1), Vector2(0, -1), Vector2(-1, 0), Vector2(-1, -1)]

# Called when the node enters the scene tree for the first time.
#This is currently wrong, I need to check the locality model
func _ready():
	for i in range(40):
		set_cell(-i - 20, i, 3)
		set_cell(-i - 20, 80-i, 3)
		set_cell(i- 20, 0, 3)
		set_cell(i- 20, 80, 3)
		set_cell(i + 20, i, 3)
		set_cell(i + 20, 80-i, 3)
	var move = 10
	set_cell(0, 0 + move, 0)
	set_cell(1, 0 + move, 2)
	set_cell(0, 1 + move, 2)
	set_cell(1, -1 + move, 2)
	set_cell(0, -1 + move, 2)
	set_cell(-1, 0 + move, 2)
	set_cell(-1, -1 + move, 2)
	#set_cell(-1, 0 + move, 2)
	#set_cell(0, -1 + move, 2)
	#set_cell(-1, -1 + move, 2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
