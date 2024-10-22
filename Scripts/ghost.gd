extends CharacterBody2D

class_name Ghost

@export var player: CharacterBody2D
@export var spring_constant: float = 8.0  # Controls how strong the pull to the orbit is
@export var damping: float = 0.1  # Damping factor (value between 0 and 1, higher means faster stop)
@export var orbit_radius: float = 150.0  # Distance of the ghost from the player
@export var orbit_speed: float = 2.0  # How fast the ghost orbits around the player

func _ready() -> void:
	GameManager.Ghosts.append(self as Ghost)


func _physics_process(delta: float) -> void:
	if player:
		# Calculate the desired position (orbiting around the player)
		var time_offset = Time.get_ticks_msec() / 1000.0 * orbit_speed
		if !player:
			return
		var desired_position = player.global_position + Vector2(cos(time_offset), sin(time_offset)) * orbit_radius

		# Calculate the spring force to pull the ghost towards the desired position
		var displacement = desired_position - global_position
		var spring_force = displacement * spring_constant

		# Apply the spring force to velocity
		velocity += spring_force * delta

		# Apply damping using lerp() for each component of velocity
		velocity.x = lerp(velocity.x, 0.0, damping)
		velocity.y = lerp(velocity.y, 0.0, damping)

		# Use move_and_slide() for movement
		move_and_slide()

func _on_animated_sprite_2d_animation_finished() -> void:
	if $AnimatedSprite2D.animation == "spawn":
		$AnimatedSprite2D.play("idle")
