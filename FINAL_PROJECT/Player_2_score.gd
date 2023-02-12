extends Label


var p2_score = 0


func _process(delta):
	p2_score()


func p2_score():
	if Input.is_action_just_pressed("e"):

		p2_score += 1
		self.text = str(p2_score)
