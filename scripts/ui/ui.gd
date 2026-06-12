extends Control
class_name UI

signal restart_button_pressed()
#signal playSFX(sound:SFXplayer.SFX)
signal setting_changed(setting: SettingsManager.Settings, value: Variant)

@onready var settings_ui : Control = %SettingsDialog
@onready var game_over_ui : GameOverUI = %GameOver
@onready var score_label : Label = %ScoreLabel

func _on_game_game_won(score: int) -> void:
	game_over_ui.set_title("Game won!")
	game_over_ui.set_subtitle("You are the best <lore thing>!")
	game_over_ui.set_score_label("You saved {0} plants!".format([score]))
	game_over_ui.show_score()
	game_over_ui.show()
	game_over_ui.hide()

func _on_game_game_lost(_score: int) -> void:
	game_over_ui.set_title("Game lost!")
	game_over_ui.set_subtitle("The <lore thing> has beaten you!")
	game_over_ui.hide_score()
	game_over_ui.show()

func _on_game_init_game() -> void:
	game_over_ui.hide_score()
	game_over_ui.hide()
	settings_ui.hide()
	
func _on_game_score_updated(new_score: int) -> void:
	score_label.text = "{0}".format([new_score])

func _on_restart_button_pressed() -> void:
	#playSFX.emit(SFXplayer.SFX.ButtonClick)
	restart_button_pressed.emit()

func _on_close_settings_button_pressed() -> void:
	settings_ui.hide()

func _on_open_settings_menu_pressed() -> void:
	settings_ui.show()

func _on_music_volume_slider_value_changed(value: float) -> void:
	setting_changed.emit(SettingsManager.Settings.BGM_VOLUME, value)
	
func _on_sfx_volume_slider_value_changed(value: float) -> void:
	setting_changed.emit(SettingsManager.Settings.BGM_VOLUME, value)
