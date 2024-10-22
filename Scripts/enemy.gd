extends CharacterBody2D

const SPEED = 60

var direction = -1
var health = 100
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	#position.x += direction * SPEED * delta

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	var collision = get_last_slide_collision()
	if collision != null && collision.get_collider() != null:
		if collision.get_collider().is_in_group("bullets"):
			take_damage(collision)  # Call your damage function
		
	move_and_slide()

func die():
	$AnimatedSprite2D.animation_finished.connect(died)
	$AnimatedSprite2D.play("dying")

func died():
	# spawn ghost
	print("spawn ghost")
	$AnimatedSprite2D.animation_finished.disconnect(died)
	var ghost = preload("res://Scenes/Prefabs/ghost.tscn").instantiate()
	# get the player from the Player group
	ghost.player = get_tree().get_nodes_in_group("Player")[0]
	ghost.position = position
	get_parent().add_child(ghost)
	queue_free()
	

	
func take_damage(collision : KinematicCollision2D) -> void:
	
	# reduce health
	health -= collision.get_collider().damage
	
	collision.get_collider().queue_free()
	if health <= 0:
		die()
	else:
		var anim_player = $AnimationPlayer
		anim_player.stop()  # Stop any currently playing animation
		anim_player.play("healthbar_fade")  # Play the fade animation
		$HealthBar.value = health
	
