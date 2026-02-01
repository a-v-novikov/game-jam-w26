extends CharacterBody2D

@onready var _animated_sprite = $Emmastone

func _physics_process(_delta):
	var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction != Vector2.ZERO:
		velocity = direction * 65.0
	else:
		velocity = Vector2.ZERO
	move_and_slide()


func _process(_delta):
	if Input.is_action_pressed("move_down"):
		_animated_sprite.play("walk_down")
	elif Input.is_action_pressed("move_left"):
		_animated_sprite.play("walk_left")
	elif Input.is_action_pressed("move_right"):
		_animated_sprite.play("walk_right")
	elif Input.is_action_pressed("move_up"):
		_animated_sprite.play("walk_up")
	else:
		_animated_sprite.stop()
