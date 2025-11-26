extends CharacterBody2D

var vy=0
var grav=200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	vy+=grav*delta
	
	if Input.is_action_just_pressed("flap"):
		vy=-100
	
	position.y+=vy*delta
	
