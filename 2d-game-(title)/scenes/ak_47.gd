extends Node2D

@onready var shoot_pos: Marker2D = $Sprite2D/shoot_pos

var time_between_shot: float = 0.25
var can_shoot: bool = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ShootTimer.wait_time = time_between_shot


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("shoot") and can_shoot:
		_shoot()
		can_shoot = false
		$ShootTimer.start()

func _shoot():
	pass

func _on_shoot_timer_timeout() -> void:
	can_shoot = true
