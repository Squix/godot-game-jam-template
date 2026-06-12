extends Control
class_name GameOverUI

@onready var title : Label = %GameOverTitle
@onready var subtitle : Label = %GameOverSubtitle
@onready var score_container : Control = %GameOverScoreContainer
@onready var score_label : Label = score_container.get_node("./Score")


func show_score() -> void:
	score_container.show()
	
func hide_score() -> void:
	score_container.hide()

func set_title(new_title: String) -> void:
	title.text = new_title
	
func set_subtitle(new_label: String) -> void:
	subtitle.text = new_label

func set_score_label(new_score_label: String) -> void:
	score_label.text = new_score_label
