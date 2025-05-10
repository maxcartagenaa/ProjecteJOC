class_name GameInputEvent

static var direction: Vector2

static func movement_input() -> Vector2:
	direction = Vector2.ZERO  
	
	if Input.is_action_pressed("walk_left"):
		direction.x -= 1
	if Input.is_action_pressed("walk_right"):
		direction.x += 1
	if Input.is_action_pressed("walk_up"):
		direction.y -= 1
	if Input.is_action_pressed("walk_down"):
		direction.y += 1
		
	return direction.normalized()
	
	
static func is_movement_inptu() -> bool:
	return direction != Vector2.ZERO
