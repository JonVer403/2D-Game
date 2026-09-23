extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta: float) -> void:

	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

func process_movement() -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right", "up", "down")
	
	move_and_slide()
