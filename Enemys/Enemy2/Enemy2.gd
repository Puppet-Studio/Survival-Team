extends KinematicBody2D

onready var player = get_parent().get_parent().get_node("Player")
var speed = 125

func _init():
	self.position.x = randi();
	self.position.y = randi();

func _physics_process(delta):
	var dir = (player.global_position - global_position).normalized()
	var motion = move_and_collide(dir * speed * delta)
