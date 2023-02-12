extends Area



func _ready():
	self.connect("body_entered", self, "move_backwards")
func move_backwards(body):
	if body.name == "player":
		body.queue_free()
