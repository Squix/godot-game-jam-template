extends Control

@export var show_how_to_step : bool = true
@export var main_scene : PackedScene = preload("res://scenes/main.tscn")

@onready var title_step : Control = %TitleStep
@onready var how_to_play_step : Control = %HowToPlayStep
@onready var click_sfx_player : AudioStreamPlayer = %SFXplayer

func _ready() -> void:
	#reset UI
	title_step.show()
	how_to_play_step.hide()

func _on_see_how_to_pressed() -> void:
	click_sfx_player.play()
	if show_how_to_step:
		how_to_play_step.show()
		title_step.hide()
	else:
		_on_start_game_pressed()
	
func _on_start_game_pressed() -> void:
	click_sfx_player.play()
	get_tree().change_scene_to_packed(main_scene)
