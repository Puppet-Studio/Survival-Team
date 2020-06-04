extends Panel

func _ready():
	$Timer.start()


func _process(delta):
	$TimeLeft.text = str($Timer.time_left)
	$TimeLeft.visible_characters = 4


func _on_Timer_timeout():
	$Button.show()
	$TimeLeft.hide()


func _on_Button_pressed():
	get_parent().hide()
