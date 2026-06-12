extends Node
class_name GameManager

signal init_game
signal reset_game
signal game_won(score: int)
signal game_lost(score: int)
signal score_updated(new_score:int)

enum GameState {PLAYING, GAMEOVER}

var state : GameState

var _score : int:
	set(value):
		score_updated.emit(value)

func _ready() -> void:
	_init_game()

func _init_game() -> void:
	init_game.emit()
	state = GameState.PLAYING
