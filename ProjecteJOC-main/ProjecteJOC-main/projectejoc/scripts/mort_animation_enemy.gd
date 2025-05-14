extends AnimatedSprite2D

func _ready() -> void:
	play("death")
	await animation_finished
	queue_free()
