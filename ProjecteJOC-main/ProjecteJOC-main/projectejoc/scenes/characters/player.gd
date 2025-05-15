class_name Player

extends CharacterBody2D

var player_direction: Vector2


@onready var health_bar := $ProgressBar
@export var live_points : int = 30

func _ready() -> void:
	set_health()

func set_health() -> void:
	health_bar.max_value = live_points
	health_bar.value = live_points
	
func update_health(Amount : int) -> void:
	live_points += Amount
	health_bar.value = live_points

func take_damage(amount: int) -> void:
	live_points -= amount
	update_health_bar()
	if live_points == 0:
		die()

func update_health_bar() -> void:
	health_bar.value = live_points

func die() -> void:
	get_tree().change_scene_to_file("res://scenes/you_died_menu.tscn")
