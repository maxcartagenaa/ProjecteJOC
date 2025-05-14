extends Control

var _is_paused := false

var is_paused: bool:
	set(value):
		_is_paused = value
		get_tree().paused = value
		visible = value
	get:
		return _is_paused

func _ready() -> void:
	is_paused = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		is_paused = !is_paused

func _on_resume_button_pressed() -> void:
	is_paused = false
	

func _on_main_menu_button_pressed() -> void:
	get_tree().paused = false  
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
