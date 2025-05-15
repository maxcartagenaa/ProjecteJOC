extends Label

var vel := 500
var acc := -200

func _process(delta: float) -> void:
	position += Vector2(0, vel) * delta
	vel += acc * delta
	
	if vel < 0:
		vel = 0
		acc = 0


func _on_quit_game_button_pressed() -> void:
	get_tree().quit()
	
func _on_try_again_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/nivell1.tscn")
