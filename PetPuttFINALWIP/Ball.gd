extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	self.bounce = .6
	self.gravity_scale = 0
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.linear_velocity.x < 50 && self.linear_velocity.x > -50:
		if self.linear_velocity.y < 50 && self.linear_velocity.y > -50:
				global.ballMoving = false
	if Input.is_action_just_pressed("launch_ball") && global.ballMoving == false && global.gameOver == false:
		var differenceVector = self.position - get_global_mouse_position()
		var directionVector = differenceVector.normalized()
		var speed = 400 
		var launchVector = directionVector * speed
		self.linear_velocity = launchVector
		global.ballMoving = true
		if(global.bambooHealth > 0):
			global.bambooHealth -=1
		if(global.bambooHealth == 0):
			global.bambooHealth = 3
	pass
