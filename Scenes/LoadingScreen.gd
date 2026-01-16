extends Control

@onready var progress_bar = $CenterContainer/VBoxContainer/ProgressBar
@onready var loading_label = $CenterContainer/VBoxContainer/LoadingLabel

var progress = 0.0
var loading_speed = 25.0  # Progress units per second

func _ready():
	# Start with 0 progress
	progress = 0.0
	progress_bar.value = 0.0

func _process(delta):
	# Increment progress over time
	if progress < 100.0:
		progress += loading_speed * delta
		progress_bar.value = progress
		
		# Update loading text
		loading_label.text = "Loading... " + str(int(progress)) + "%"
	else:
		# Loading complete, transition to main menu
		get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
