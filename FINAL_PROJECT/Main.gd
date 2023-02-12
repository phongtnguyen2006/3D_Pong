extends Spatial
var item_area = preload("res://item_area.tscn")
func _ready():
	var counter = 1
	while counter < 10:
		var new_item = item_area.instance()
		new_item.global_transform.origin = Vector3(0.0, 2.0, counter*2)
		self.add_child(new_item)
		counter+=1

