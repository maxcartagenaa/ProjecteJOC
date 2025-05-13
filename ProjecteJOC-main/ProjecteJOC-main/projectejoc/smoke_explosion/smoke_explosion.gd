extends Node2D


func _ready():
	%Smoke.material.set_shader_parameter("texture_offset", Vector2(1, 0))
	%AnimationPlayer.play("explosion")
	await %AnimationPlayer.animation_finished
	queue_free()
