extends Node

@export var spawners: Array[NodePath] 

var round: int = 1
var enemies_per_spawner: int = 5
var total_enemies_alive: int = 0

func _ready():
	start_wave()

func start_wave():
	print("Starting wave", round)
	total_enemies_alive = 0

	for spawner_path in spawners:
		var spawner = get_node(spawner_path)
		spawner.spawn_wave(enemies_per_spawner, Callable(self, "_on_enemy_dead"))
		total_enemies_alive += enemies_per_spawner

	update_round_ui()

func _on_enemy_dead():
	total_enemies_alive -= 1
	print(total_enemies_alive, " enemies remaining")

	if total_enemies_alive == 0:
		round += 1
		enemies_per_spawner = 5 + round
		await get_tree().create_timer(2.0).timeout
		start_wave()

func update_round_ui():
	if has_node("RoundLabel"):
		$RoundLabel.text = "Round: %d" % round
	if has_node("EnemiesLabel"):
		$EnemiesLabel.text = "Enemies: %d" % total_enemies_alive
