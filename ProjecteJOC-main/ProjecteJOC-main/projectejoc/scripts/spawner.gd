
extends Node2D  # o Area2D

@onready var Enemy_scene = preload("res://scenes/enemy.tscn")
var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()

func spawn_wave(count: int, death_callback: Callable):
	for i in range(count):
		var enemy = Enemy_scene.instantiate()
		enemy.position = Vector2(rng.randi_range(17, 427), rng.randi_range(-242, 22))
		add_child(enemy)
		enemy.connect("dead", death_callback)
	
