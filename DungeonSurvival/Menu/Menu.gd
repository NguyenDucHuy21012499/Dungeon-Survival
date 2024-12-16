extends Control

onready var menu = $BackGround/Menu
onready var setting = $BackGround/Setting
	
func _ready():
	$BackGround/Menu/Start.grab_focus()
	
func _on_Quit_pressed():
	get_tree().quit()

func _on_Start_pressed():
	get_tree().change_scene("res://Game.tscn")

func show_and_hide(first, second):
	first.show()
	second.hide()

func _on_Setting_pressed():
	show_and_hide(setting, menu)
	$BackGround/Setting/ColorRect/HBoxContainer/VBoxContainer2/Master.grab_focus()

func _on_Back_pressed():
	show_and_hide(menu, setting)
	$BackGround/Menu/Start/.grab_focus()

func _on_Master_value_changed(value):
	volume(0, value)

func _on_Music_value_changed(value):
	volume(1, value)

func _on_Sound_value_changed(value):
	volume(2, value)

func volume(bus_index, value):
	AudioServer.set_bus_volume_db(bus_index, -value/2.5)
