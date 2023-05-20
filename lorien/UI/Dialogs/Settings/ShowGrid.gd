extends HBoxContainer


func _ready() -> void:
	$ShowGrid.pressed = Settings.get_value(Settings.SHOW_GRID, Config.SHOW_GRID)

func _on_ShowGrid_toggled(button_pressed: bool) -> void:
	Settings.set_value(Settings.SHOW_GRID, button_pressed)
