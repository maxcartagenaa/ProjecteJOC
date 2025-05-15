
	
extends Node2D  # o Area2D

@onready var Enemy_scene = preload("res://scenes/enemy.tscn")
var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()

func spawn_wave(count: int, death_callback: Callable):
	for i in range(count):
		var enemy = Enemy_scene.instantiate()
		enemy.position = Vector2(rng.randi_range(1131.0,1766.0), rng.randi_range(523.0,733.0))
		add_child(enemy)
		enemy.connect("dead", death_callback)
	
