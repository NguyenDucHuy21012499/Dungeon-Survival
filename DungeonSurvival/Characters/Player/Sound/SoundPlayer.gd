extends Node

onready var audioStreamPlayer:= $AudioPlayer/AudioStreamPlayer

func play_sound():
	audioStreamPlayer.play()
