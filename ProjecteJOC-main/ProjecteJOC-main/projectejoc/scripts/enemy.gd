extends CharacterBody2D

var health = 3


var speed = 60
var player_chase = false 
var player: Node2D = null

func _physics_process(delta):
	if player_chase and player != null:
		var direction = (player.global_position - global_position).normalized()
		velocity = direction * speed

		$AnimatedSprite2D.play("walk")
		$AnimatedSprite2D.flip_h = direction.x < 0
	else:
		velocity = Vector2.ZERO
		$AnimatedSprite2D.play("idle")

	move_and_slide()


func _on_detaction_area_body_entered(body: Node2D) -> void:
	player = body
	player_chase = true



func _on_detaction_area_body_exited(body: Node2D) -> void:
	player = null
	player_chase = false
	
func take_damage():
	health -= 1
	
	if health == 0:
		
		queue_free()
		const SMOKE_SCENE = preload("res://scenes/mort_animation_enemy.tscn")
		var smoke = SMOKE_SCENE.instantiate()
		get_parent().add_child(smoke)
		smoke.global_position = global_position
