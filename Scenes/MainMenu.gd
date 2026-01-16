extends Control

func _on_start_button_pressed():
	# Load the assignment/game scene
	var error = get_tree().change_scene_to_file("res://Scenes/Assignment.tscn")
	if error != OK:
		push_error("Failed to load game scene")

func _on_options_button_pressed():
	# Placeholder for options menu
	print("Options button pressed")

func _on_quit_button_pressed():
	# Quit the game
	get_tree().quit()
