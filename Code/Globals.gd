extends Node



func _ready():
	pass
	#BUG: okk
#TODO: learn more about window

func _unhandled_key_input(event):
	if event.is_action_pressed("f_fullscreen"):
		get_window().mode = Window.MODE_EXCLUSIVE_FULLSCREEN if (!((get_window().mode == Window.MODE_EXCLUSIVE_FULLSCREEN) or (get_window().mode == Window.MODE_FULLSCREEN))) else Window.MODE_WINDOWED
		
