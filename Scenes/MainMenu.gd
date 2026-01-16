extends Control

func _on_start_button_pressed():
	# Load the assignment/game scene
	get_tree().change_scene_to_file("res://Scenes/Assignment.tscn")

func _on_options_button_pressed():
	# Placeholder for options menu
	print("Options button pressed")

func _on_quit_button_pressed():
	# Quit the game
	get_tree().quit()
