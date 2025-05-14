extends Node

const TARGET_SCENE_PATH := "res://scenes/pause_menu.tscn"

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file(TARGET_SCENE_PATH)
