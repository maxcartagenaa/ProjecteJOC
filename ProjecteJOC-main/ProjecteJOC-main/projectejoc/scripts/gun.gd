extends Area2D

@onready var gun_sprite = $Marker2D/GunSprite
@onready var muzzle = %Muzzle

var target_in_range = false

func _process(delta):
	var mouse_position = get_global_mouse_position()
	look_at(mouse_position)

	var angle_deg = wrapf(rotation_degrees, -180, 180)

	if angle_deg > 90 or angle_deg < -90:
		gun_sprite.scale.y = -1
	else:
		gun_sprite.scale.y = 1
		
	if Input.is_action_just_pressed("shoot"):
		shoot()

func shoot():
	const BULLET = preload("res://scenes/bullet.tscn")
	var new_bullet = BULLET.instantiate()
	new_bullet.global_position = muzzle.global_position
	new_bullet.global_rotation = muzzle.global_rotation
	get_tree().current_scene.add_child(new_bullet)
