extends Control

@onready var label = $"Panel/timeLabel"
@onready var timer = $"/root/World/Timer"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var time = int(timer.time_left)
	var seconds = time%60
	var minutes = (time/60)%60
	var printTime = "%02d:%02d" % [minutes, seconds]
	label.text = printTime
