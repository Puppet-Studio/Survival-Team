extends KinematicBody2D

var velocity = Vector2()
export var speed = 300 #max speed of the player
onready var bullet_scene = preload("res://Player/Bullet.tscn")


func _input(event):
	if event.is_action_pressed("ui_accept"):
		shoot()
func _physics_process(delta):
	#Movements
	var input_vel = Vector2()
	Playos.rot = self.rotation_degrees
	#Right
	if Input.is_action_pressed("ui_right"):
		input_vel.x += speed
		self.rotation_degrees = 0
	#Left
	if Input.is_action_pressed("ui_left"):
		input_vel.x -= speed
		self.rotation_degrees = 180
	#Up
	if Input.is_action_pressed("ui_up"):
		input_vel.y -= speed
		self.rotation_degrees = -90
	#Down
	if Input.is_action_pressed("ui_down"):
		input_vel.y += speed
		self.rotation_degrees = 90
	#Diagonal Up and Left
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_left"):
		self.rotation_degrees = -135
	#Diagonal Up and Right
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_right"):
		self.rotation_degrees = -45
	#Diagonal Down and Left
	if Input.is_action_pressed("ui_down") and Input.is_action_pressed("ui_left"):
		self.rotation_degrees = 135
	#Diagonal Down and Right
	if Input.is_action_pressed("ui_down") and Input.is_action_pressed("ui_right"):
		self.rotation_degrees = 45
	velocity = input_vel.normalized() * speed
	var motion = move_and_collide(velocity * delta)

func shoot():
	var b = bullet_scene.instance()
	b.start(self.global_position, rotation)
	get_parent().add_child(b)
