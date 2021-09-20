extends Node2D

#called when added to the scene
func _ready():
	#Set pause_mode to actually stop doing stuff when paused
	pause_mode = Node.PAUSE_MODE_STOP
	#set to random height
	setRandomHeight()

func setRandomHeight():
	#create a reandom generator
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	#set position to random value between 100 and 500
	
	return

#called 60 times a second
func _physics_process(delta):
	#move pipes to the left by 200 pixels per second
	
	#if position is outside the screen on the left, move to position outside the right of the screen and to a random height
	
	return
