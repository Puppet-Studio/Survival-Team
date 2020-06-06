extends "res://Player/Weapons/Base Weapon.gd"

func _ready():
	damage = 5

func start():
	print("Hello World!")
	$AnimationPlayer.play("Sword Attack")


func _on_AnimationPlayer_animation_finished(anim_name):
	start()
