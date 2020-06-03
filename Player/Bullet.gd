extends KinematicBody2D


var speed = 400
var velocity

func start(pos, dir):
	self.rotation_degrees = Playos.rot
	position = pos
	if(Playos.rot != 90 and Playos.rot != -90 and Playos.rot != 180 and Playos.rot != 0):
		dir += 45

func _process(delta):
	velocity = Vector2(speed, 0).rotated(rotation)
	var colision = move_and_collide(velocity * delta)


func _on_Colisions_body_shape_entered(body_id, body, body_shape, area_shape):
	if(body.is_in_group("Enemys")):
		body.queue_free()
		queue_free()
