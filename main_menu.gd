extends Control

func _ready():
	# Adjusted paths for the buttons inside VBoxContainer
	$VBoxContainer/StartButton.pressed.connect(_on_start_button_pressed)
	$VBoxContainer/QuitButton.pressed.connect(_on_quit_button_pressed)

func _on_start_button_pressed():
	var new_scene = preload("res://main_menu.tscn")  # Replace with your scene path
	get_tree().change_scene_to_packed(new_scene)

func _on_quit_button_pressed():
	get_tree().quit()
