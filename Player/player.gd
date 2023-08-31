extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var bullet_scene = preload("res://Bullet/bullet.tscn")
var direction:int =0
var speed = 300
var player_half_width=24

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_left"):
		direction=-1
	elif Input.is_action_pressed("move_right"):
		direction =+1
	else:
		direction = 0		
	pass

#	position.x+= direction*speed*delta
	position.x=clamp(position.x+direction*speed*delta,player_half_width,400-player_half_width)
