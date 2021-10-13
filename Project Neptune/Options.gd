extends Control

func _on_Main_Slide_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)


func _on_Test_Button_pressed():
	$HBoxContainer/Test_Button/AudioStreamPlayer.play()


func _on_BGM_Slide_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("BGM"), value)
