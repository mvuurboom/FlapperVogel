extends KinematicBody2D

#some variables for moving the bird
var velocity:Vector2 = Vector2.ZERO
var acceleration:int = 25	#downwards acceleration
var max_velocity:int = 800	
var flap_velocity:int = 450	#the speed of the 'flap' (jump)

#define 2 signals for signalling to the 'game'
signal flappy_score
signal flappy_die

#_ready is called when this object is added to a scene
func _ready():
	#Set pause_mode to actually stop doing stuff when paused
	pause_mode = Node.PAUSE_MODE_STOP
	#Reset the bird to its initial state
	reset()

#reset the bird to its initial position
func reset():
	#set the bird to some arbitrary height
	
	#start with a flap
	
	return

#_physics_process is called 60 times a second
#delta is the time besteen last call and this call
func _physics_process(delta):
	#Keep accelerating as long as its velocity is smaller than max_velocity
	
	
	#when Enter or Spacebar is pressed, do a 'flap'
	#we use 'just_pressed' so holding spacebar does not make the bord go higher and higher
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y=velocity.y
	#move the bird
	move_and_collide(velocity*delta)

#_on_Area2D_area_entered is called whenever the area of the bird anters another area
#this callback is defined on the Area2D node
func _on_Area2D_area_entered(area):
	#when hitting a pipe or a wall (inivible top and bottom walls), send a signal that de bird dies
	
	#when hitting the score area of the pipes, send a score signal
	
	return


