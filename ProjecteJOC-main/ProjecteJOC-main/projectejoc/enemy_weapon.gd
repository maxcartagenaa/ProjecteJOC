extends Area2D

func _ready() -> void:
	connect_signals()

func connect_signals() -> void:
	$".".connect("body_entered", damage)

func damage(body : Node2D) -> void:
	if body is Player:
		body.update_health(-2)
	
