extends Node2D

@onready var play_button = $play_sprite/play_button
@onready var credits_button = $credits_sprite/credits_button


func _ready() -> void:
	play_button.pressed.connect(_on_play_button_pressed)
	credits_button.pressed.connect(_on_credits_button_pressed)

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://scenes/nivell1.tscn")

func _on_credits_button_pressed():
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
