extends RichTextLabel

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#
func _on_Timer_timeout():
	
	set_visible_characters(get_visible_characters()+1)
	
	
func are_all_char_displayed():
	if get_visible_characters() < get_total_character_count():
		return false
	else:
		return true

func display_all_char():
	set_visible_characters(get_total_character_count()-1) #-1 is a bit strange, but allow the process to end himself properly. Otherwise, it will reset text and restart

