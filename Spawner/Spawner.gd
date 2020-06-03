extends Node2D


onready var enemy1 = preload("res://Enemys/Enemy1/Enemy1.tscn")
onready var enemy2 = preload("res://Enemys/Enemy2/Enemy2.tscn")
var can_spawn = true


func _ready():
	randomizer()


func randomizer():
	 var randomizer = randi()%1+1
	 return randomizer


func _on_TimerSpawn_timeout():
		var e1 = enemy1.instance()
		var e2 = enemy2.instance()
		if(randomizer() == 1):
			randomizer()
			add_child(e1)
		elif(randomizer() == 2):
			randomizer()
			add_child(e2)
