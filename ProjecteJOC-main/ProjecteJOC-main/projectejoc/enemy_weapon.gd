extends Area2D

func _ready() -> void:
	connect("body_entered", _on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		body.player_damage(2)
		
		var enemy = get_parent()
		if enemy.has_node("AnimatedSprite2D"):
			enemy.get_node("AnimatedSprite2D").play("attack")
