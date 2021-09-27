extends Node2D

#some variables
var score:int = 0
onready var Flappy:KinematicBody2D = $Flappy	#reference to bird
var pipes_resource = preload("res://Pipes.tscn")	#reference to the definition of the pipes

#called once when added to the scene
func _ready():
	#set pause mode to continue processing when paused so it can still handle inputs
	pause_mode = Node.PAUSE_MODE_PROCESS
	#set game to pause
	get_tree().paused = true	
	#connect signals to methods
	Flappy.connect("flappy_score", self, "addScore")
	Flappy.connect("flappy_die", self, "gameOver")
	
#start a new game
func startgame():
	#make the label 'press space to start' invisible
	$LabelStartGame.visible = false
	#remove pipes from the 'Pipes' node if the exsist
	
	#reset the bird
	Flappy.reset()
	#create 5 new pipes outside the screen (starting on x = 1056) 256 pixel apart
	
	#reset the score

	#unpause the game
	get_tree().paused = false

#called when bird crashes
func gameOver():
	#play sound
	
	#make the label 'press space to start' visible
	$LabelStartGame.visible = true
	#pause the game
	get_tree().paused = true	

#called the bird scores a point (went through the pipes)
func addScore():
	#play sound
	
	return

#game loop
#called 60 times per second
func _process(_delta):
	#update the score label
	
	#if the game is paused and spacebar or enter is pressed, start a new game
	if get_tree().paused && Input.is_action_just_pressed("ui_accept"):
		startgame()
