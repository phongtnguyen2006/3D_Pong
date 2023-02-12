extends Label


var p1_score = 0


func _process(delta):
	p1_score()


func p1_score():
	if Input.is_action_just_pressed("q"):

		p1_score += 1
		self.text = str(p1_score)
