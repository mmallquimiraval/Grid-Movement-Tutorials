extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)
	
func _input(event):
	if(event.is_action_pressed("move_up")):
		$TextureProgress.value+=25
	elif(event.is_action_pressed("move_down")):
		$TextureProgress.value+=25
	elif(event.is_action_pressed("move_left")):
		$TextureProgress.value+=25
	elif(event.is_action_pressed("move_right")):
		$TextureProgress.value+=25
	elif(event.is_action_pressed("sonar")):
		if($TextureProgress.value >= 50):
			$TextureProgress.value-=50
			$RichTextLabel.text = "Sonar Used"
	elif(event.is_action_pressed("silence")):
		if($TextureProgress.value >= 75):
			$TextureProgress.value-=75
			$RichTextLabel.text = "Silence Used"
	elif(event.is_action_pressed("torpedo")):
		if($TextureProgress.value >= 100):
			$TextureProgress.value-=100
			$RichTextLabel.text = "Torpedo Used"
			
	if($TextureProgress.value == 50):
		$Sonar.value+=100
	elif($TextureProgress.value == 75):
		$Silence.value+=100
	elif($TextureProgress.value == 100):
		$Torpedo.value+=100
		
	if($TextureProgress.value < 100):
		$Torpedo.value-=100
	if($TextureProgress.value < 75):
		$Silence.value-=100
	if($TextureProgress.value < 50):
		$Sonar.value-=100

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
