extends Node2D

@onready var back_menu = $back_menu


func _ready() -> void:
	back_menu.pressed.connect(_on_back_menu_pressed)

func _on_back_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
