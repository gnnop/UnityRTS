extends Node2D

var cur_pos = Vector2(0,0)

var keys = ["player_Z", "player_X", "player_A", "player_W", "player_E", "player_D"]

func neighborhood(var ipos):
	if (ipos.x as int) % 2 == 0:
		return [Vector2(-1, 0), Vector2(0, 1), Vector2(-1, -1), Vector2(0, -1), Vector2(1, -1), Vector2(1, 0)]
	else:
		return [Vector2(-1, 1), Vector2(0, 1), Vector2(-1, 0), Vector2(0, -1), Vector2(1, 0), Vector2(1, 1)]


func _input(event):
	for i in range(6):
		if event.is_action_pressed(keys[i]):
			cur_pos += neighborhood(cur_pos)[i]
			print($"..".map_to_world(cur_pos))
			position = $"..".map_to_world(cur_pos)
