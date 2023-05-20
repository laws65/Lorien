class_name MoveTool
extends CanvasTool

var dragging := false

# -------------------------------------------------------------------------------------------------
var _last_mouse_position: Vector2
var _removed_strokes := [] # BrushStroke -> Vector2
var _bounding_box_cache = {} # BrushStroke -> Rect2

# -------------------------------------------------------------------------------------------------
func tool_event(event: InputEvent) -> void:
	get_tree().root.get_node("Main/InfiniteCanvas/Viewport/Camera2D")._pan_active = event is InputEventMouseMotion and dragging

	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			dragging = event.pressed
