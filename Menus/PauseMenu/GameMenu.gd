extends CanvasLayer
signal resume_game
signal end_game
signal pause_game



func _on_Resume_pressed():
	$MainMenu.hide()
	emit_signal("resume_game")


func _on_ExitGame_pressed():
	$MainMenu.hide()
	emit_signal("end_game")


func _on_CornerButton_toggled(button_pressed):
	if button_pressed:
		$MainMenu.show()
		emit_signal("pause_game")
	else:
		$MainMenu.hide()
		emit_signal("end_game")
