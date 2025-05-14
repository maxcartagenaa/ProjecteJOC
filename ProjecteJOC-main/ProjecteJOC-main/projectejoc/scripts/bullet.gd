extends Area2D

var travelled_distance = 0

func _physics_process(delta: float) -> void:
	
	const RANGE = 1200
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction * 300 * delta
	
	travelled_distance += 1000 * delta
	if travelled_distance > RANGE:
		queue_free()

func _ready():
	$projectil.play("shoot")
	
func _on_body_entered(body: Node2D) -> void:
	queue_free()
	if body.has_method("take_damage"):
		body.take_damage()
