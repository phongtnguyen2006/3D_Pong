extends Area


func _ready():
	self.connect("body_entered", self, "move_right")
	self.connect("body_exited", self, "unhide")
func move_right(body):
	if body.name == "player":
		body.queue_free()
