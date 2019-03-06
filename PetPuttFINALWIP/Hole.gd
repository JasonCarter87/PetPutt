extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_HoleArea_area_entered(area):
	if area.get_name() == "Ball":
		print("ball in hole")
		global.level += 1
		global.loaded = false
	pass # Replace with function body.
	


func _on_HoleArea_body_entered(body):
	if body.get_name() == "Ball":
		print("ball in hole")
		global.loadedLevel += 1
		global.loaded = false
	pass # Replace with function body.
