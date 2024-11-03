extends LineEdit

@onready var numpad = $"."

# connect signal from number buttons 

func _process(delta):
	if text.length() == max_length:
		text_submitted.emit(text)
		numpad.clear()

func _on_button_pressed() -> void:
	numpad.text += "1 "

func _on_button_2_pressed() -> void:
	numpad.text += "2 "

func _on_button_3_pressed() -> void:
	numpad.text += "3 "

func _on_button_4_pressed() -> void:
	numpad.text += "4 "

func _on_button_5_pressed() -> void:
	numpad.text += "5 "

func _on_button_6_pressed() -> void:
	numpad.text += "6 "

func _on_button_7_pressed() -> void:
	numpad.text += "7 "

func _on_button_8_pressed() -> void:
	numpad.text += "8 "
	
func _on_button_9_pressed() -> void:
	numpad.text += "9 "

func _on_button_bs_pressed() -> void:
	delete_text((self.text.length()-2), self.text.length())
	
func _on_button_0_pressed() -> void:
	numpad.text += "0 "
	
func _on_button_c_pressed() -> void:
	numpad.clear()
