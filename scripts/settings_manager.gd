extends Node
class_name SettingsManager

enum Settings {BGM_VOLUME, SFX_VOLUME}


func _on_ui_setting_changed(setting: SettingsManager.Settings, new_value:Variant) -> void:
	match setting:
		Settings.BGM_VOLUME:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("BGM"), linear_to_db(new_value))
		Settings.SFX_VOLUME:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"), linear_to_db(new_value))
