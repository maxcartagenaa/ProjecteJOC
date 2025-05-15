extends Node2D

@onready var personatge = $Sprite2D
@onready var etiqueta = $Label

const velocitat = -100


func _process(delta):
	# Cambia la posición directamente
	personatge.position.x += velocitat * delta
	etiqueta.position.x += velocitat * delta
