extends CharacterBody2D

var speed = 400
var ball

func _ready():
	ball = get_parent().get_node("Ball")

func _physics_process(delta):
	if abs(ball.position.y - position.y) < 10:
		return
	
	if ball.position.y < position.y:
		velocity.y = -1
	elif ball.position.y > position.y:
		velocity.y = 1
	else:
		velocity.y = 0
	
	velocity *= speed
	
	move_and_collide(velocity * delta)
	
