extends StaticBody3D

@onready var timer = $"/root/World/Timer"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	input_ray_pickable = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func on_clicked():
	var current = timer.get_time_left()
	#timer.set_wait_time(current+30)
	timer.start(current+30)
	print("clicked")
