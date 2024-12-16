extends Control

var is_paused: bool = false


func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused
		
func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		set_is_paused(!is_paused)
		$VBoxContainer/Resume.grab_focus()
		
func _on_Resume_pressed():
	set_is_paused(false)


func _on_Quit_pressed():
	set_is_paused(false)
	get_tree().change_scene("res://Menu/Menu.tscn")
