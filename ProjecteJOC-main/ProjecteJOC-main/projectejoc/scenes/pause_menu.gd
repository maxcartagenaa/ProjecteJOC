extends Node2D

@onready var main_menu_button = $main_menu_button


func _ready() -> void:
	main_menu_button.pressed.connect(_on_main_menu_button_pressed)

func _on_main_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
