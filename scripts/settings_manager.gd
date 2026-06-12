extends Node
class_name SettingsManager

signal setting_loaded(setting: Settings, value:Variant)

enum Settings {BGM_VOLUME, SFX_VOLUME}

@onready var _bgm_bus_idx : int = AudioServer.get_bus_index("BGM")
@onready var _sfx_bus_idx : int = AudioServer.get_bus_index("SFX")

func _ready() -> void:
	setting_loaded.emit(Settings.BGM_VOLUME, AudioServer.get_bus_volume_db(_bgm_bus_idx))
	setting_loaded.emit(Settings.SFX_VOLUME, AudioServer.get_bus_volume_db(_sfx_bus_idx))

func _on_ui_setting_changed(setting: SettingsManager.Settings, new_value:Variant) -> void:
	match setting:
		Settings.BGM_VOLUME:
			AudioServer.set_bus_volume_db(_bgm_bus_idx, linear_to_db(new_value))
			#print("Debug BGM bus volume: ", AudioServer.get_bus_volume_db(_bgm_bus_idx))
		Settings.SFX_VOLUME:
			AudioServer.set_bus_volume_db(_sfx_bus_idx, linear_to_db(new_value))
			#print("Debug SFX bus volume: ", AudioServer.get_bus_volume_db(_sfx_bus_idx))
