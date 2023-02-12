extends KinematicBody
var speed = 30

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	move_position()
	gravity()

func _process(delta):
	jump()

func move_position():
	if Input.is_action_pressed("up"):
		move_and_slide(Vector3.FORWARD*speed, Vector3.UP)
	if Input.is_action_pressed("left"):
		move_and_slide(Vector3.LEFT*speed, Vector3.UP)
	if Input.is_action_pressed("down"):
		move_and_slide(Vector3.BACK*speed, Vector3.UP)
	if Input.is_action_pressed("right"):
		move_and_slide(Vector3.RIGHT*speed, Vector3.UP)


func gravity():
	move_and_slide(Vector3.DOWN*speed, Vector3.UP)

func jump():
	if Input.is_action_just_pressed("ui_accept"):
		self.global_transform.origin.y += 10
