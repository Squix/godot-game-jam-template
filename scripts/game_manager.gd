extends Node
class_name GameManager

signal init_game
signal reset_game
signal game_won(score: int)
signal game_lost(score: int)
signal score_updated(new_score:int)
