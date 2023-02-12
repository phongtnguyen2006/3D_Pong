extends KinematicBody
var velocity = Vector3(20, 0, 20)

func _physics_process(delta):

	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.normal)
