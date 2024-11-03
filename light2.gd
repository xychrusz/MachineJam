extends ColorRect

@onready var answer = $"../../answer"

func _ready() -> void:
	answer.lightsUpdate.connect(_on_answer_lights_update)

func _on_answer_lights_update(lightStates: Variant) -> void:
	if lightStates[1] == 0:
		self.color = Color(1,0,0,1)
	elif lightStates[1] == 1:
		self.color = Color(1,1,0,1)
	elif lightStates[1] == 2:
		self.color = Color(0,1,0,1)
	else:
		self.color = Color(1,1,1,1)
