extends PhysicsBody2D

@export var velocity = 2000.0
var direction: Vector2
var damage: int = 40

func _ready() -> void:
	add_to_group("bullets")
	# Pre-calculate the direction based on rotation
	direction = Vector2(cos(rotation), sin(rotation))

func _physics_process(delta: float) -> void:
	# Move the bullet and check for collisions
	var collision = move_and_collide(direction * velocity * delta)
