extends PopupDialog

# Declare member variables here. Examples:

# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	popup()

func _on_Button_pressed():
	if $RichTextLabel.are_all_char_displayed() == true:
		SceneManager.goto_scene("res://areas/inscri.tscn")
	else:
		$RichTextLabel.display_all_char()
	pass # Replace with function body.
