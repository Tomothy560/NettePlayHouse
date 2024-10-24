extends Control

# Relative position and size (0-1 range)

var relative_position = Vector2(0.1, 0.1)  # Relative to the viewport
var max_relative_size = 0      # Relative to the viewport
var relative_size_ratio = Vector2(1,1)

# Called when the node enters the scene tree for the first time.
func _ready():
	var viewport_size = get_viewport().size
	relative_position.x = position.x/viewport_size.x
	relative_position.y = position.y/viewport_size.y
	var a = self.size.x/viewport_size.x
	var b = self.size.y/viewport_size.y

	max_relative_size = max(a, b)

	if (self.size.x > self.size.y):
		relative_size_ratio.x = size.x/size.y
	else:
		relative_size_ratio.y = size.y/size.x

	update_control_size_and_position()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	update_control_size_and_position()	

# Update control's size and position based on viewport size
func update_control_size_and_position():
	var viewport_size = get_viewport().size

	# Set the position based on the relative position
	self.position.x = viewport_size.x * relative_position.x
	self.position.x = viewport_size.x * relative_position.x

	# Set the size based on the relative size
	var min_viewport_size = min(viewport_size.x, viewport_size.y)

	self.size.x = min_viewport_size * relative_size_ratio.x * max_relative_size
	self.size.y = min_viewport_size * relative_size_ratio.y * max_relative_size
