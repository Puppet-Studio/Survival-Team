extends Area2D

var damage
var type
var 	weapon_range



func do_damage(body):
	if body.is_in_group("Enemys"):
		body.hurt(damage)
