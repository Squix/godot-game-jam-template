extends Node
class_name AudioPlayerManager

enum SFX {ButtonClick}

var _button_click_sfx_stream = preload("res://assets/sounds/button_click.mp3")

@onready var _sfx_player : AudioStreamPlayer = $SFXplayer
@onready var _bgm_player : AudioStreamPlayer = $BGMplayer

func play_sfx(sfx_name: SFX) -> void:
	_sfx_player.stop()
	match sfx_name:
		SFX.ButtonClick:
			_sfx_player.stream = _button_click_sfx_stream
			
	_sfx_player.pitch_scale = randf_range(0.7,1.35)
	_sfx_player.play()
	
func play_bgm() -> void:
	_bgm_player.play()
	
func stop_bgm() -> void:
	_bgm_player.stop()
