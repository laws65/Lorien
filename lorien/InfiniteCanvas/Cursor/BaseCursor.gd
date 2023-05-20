class_name BaseCursor, "res://Assets/Icons/cursor_icon.png"
extends TextureRect

# -------------------------------------------------------------------------------------------------
var _brush_size: int
var _pressure := 1.0

onready var _camera: Camera2D = get_viewport().get_node("Camera2D")

# -------------------------------------------------------------------------------------------------
func _ready() -> void:
	pass

# -------------------------------------------------------------------------------------------------
func _input(event):
	if event is InputEventMouseMotion:
		_update_position()

# -------------------------------------------------------------------------------------------------
func _update_position():
	rect_global_position = get_viewport().get_mouse_position()

# -------------------------------------------------------------------------------------------------
func set_pressure(pressure: float) -> void:
	pass

# -------------------------------------------------------------------------------------------------
func change_size(value: int) -> void:
	pass

# -------------------------------------------------------------------------------------------------
func _on_canvas_position_changed(pos: Vector2) -> void:
	_update_position()

# -------------------------------------------------------------------------------------------------
func _on_zoom_changed(value: float) -> void:
	pass
