extends Area2D

var player

func _ready():
	set_process(false)
	
func _on_doortrigger_body_entered(body):
	print(body)
	if body.name == "player":
		set_process(true)
		player = body
		#get_tree().change_scene("res://areas/inside1.tscn")
		SceneManager.goto_scene("res://areas/zelig.tscn")

func _on_doortrigger_body_exited(body):
	if body.name == "player":
		set_process(false)
		player = body
		
func _process(delta):
	#if player:
		#if player.get_node("anim").anim == "walkup":
			SceneManager.goto_scene("res://areas/zelig.tscn")
			#get_tree().change_scene("res://areas/inside1.tscn")



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass






