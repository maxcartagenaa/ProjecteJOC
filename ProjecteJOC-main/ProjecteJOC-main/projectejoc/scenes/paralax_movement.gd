extends Node2D


@onready var personatge = $Player
@onready var cpu = $CPUParticles2D
@onready var etiqueta = $Label

const velocitat = -100


func _process(delta):
	# Cambia la posición directamente
	personatge.position.x += velocitat * delta
	cpu.position.x += velocitat * delta
	etiqueta.position.x += velocitat * delta
