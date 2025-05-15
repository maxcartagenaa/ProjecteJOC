extends Area2D

@onready var Enemy_scene = load("res://scenes/enemy.tscn")

var bool_spawn = true

var random = RandomNumberGenerator.new()

func _ready() -> void:
	random.randomize()
	
func _process(delta: float) -> void:
	spawn()
 
func spawn():
	if bool_spawn:
		$Timer.start()
		bool_spawn = false
		var enemy_instance = Enemy_scene.instantiate()
		enemy_instance.position = Vector2(random.randi_range(17.0,427.0), random.randi_range(-242.0,22.0))
		add_child(enemy_instance)




func _on_timer_timeout() -> void:
	bool_spawn = true
