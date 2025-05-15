class_name Player

extends CharacterBody2D

var player_direction: Vector2

var max_health := 100
var current_health := 100

@onready var health_bar := $ProgressBar

func take_damage(amount: int) -> void:
	current_health -= amount
	current_health = max(current_health, 0)
	update_health_bar()
	if current_health == 0:
		die()

func update_health_bar() -> void:
	health_bar.value = current_health

func die() -> void:
	get_tree().change_scene_to_file("res://scenes/you_died_menu.tscn")
