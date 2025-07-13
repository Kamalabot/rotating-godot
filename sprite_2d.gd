extends Sprite2D

var speed := 120
var angular_speed := PI

func _process(delta: float) -> void:
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1
	
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		# speed *= -1
		velocity = Vector2.UP.rotated(rotation) * speed
		
	# Its amazing to see how the continuous rotation is used			
	rotation += angular_speed * delta * direction	
	position += velocity * delta
