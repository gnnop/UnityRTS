extends Camera2D


var zoom_factor = 1.1
var is_mouse_pressed = false
var stored_mouse_pos = Vector2(0.0, 0.0)

func _input(event):
	if event is InputEventMouse:
		if event.is_action_type() and not event.is_echo():
			var mouse_position = event.position
			if event.button_index == BUTTON_WHEEL_UP:
				_zoom_at_point(zoom_factor, mouse_position)
			elif event.button_index == BUTTON_WHEEL_DOWN:
				_zoom_at_point(1 / zoom_factor, mouse_position)
			elif event.button_index == BUTTON_LEFT:
				is_mouse_pressed = event.pressed
		if event is InputEventMouseMotion and is_mouse_pressed:
			_translate_screen(event.relative)
			
				


func _zoom_at_point(zoom_change, mouse_position):
	scale = scale * zoom_change
	var delta_x = (mouse_position.x - global_position.x) * (zoom_change - 1)
	var delta_y = (mouse_position.y - global_position.y) * (zoom_change - 1)
	global_position.x = global_position.x - delta_x
	global_position.y = global_position.y - delta_y


func _translate_screen(rel_coords):
	var v0 = get_viewport().size
	global_position.x = global_position.x + rel_coords.x
	global_position.y = global_position.y + rel_coords.y
