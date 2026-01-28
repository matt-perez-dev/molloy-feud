extends Control

@onready var animation = $AnimationPlayer
@onready var correct = $correct
@onready var incorrect = $incorrect
@onready var buzzer = $buzzer
@onready var strike = $Node2D
var strike_number = 0
func _on_answer_back_22_focus_entered() -> void:
	animation.current_animation = "answer1"
	correct.play()

func _on_answer_back_3_focus_entered() -> void:
	animation.current_animation = "answer2"
	correct.play()

func _on_answer_back_4_focus_entered() -> void:
	animation.current_animation = "answer3"
	correct.play()

func _on_answer_back_5_focus_entered() -> void:
	animation.current_animation = "answer4"
	correct.play()

func _on_answer_back_6_focus_entered() -> void:
	animation.current_animation = "answer5"
	correct.play()

func _on_answer_back_7_focus_entered() -> void:
	animation.current_animation = "answer6"
	correct.play()
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("buzzer"):
		buzzer.play()

	if event.is_action_pressed("strike"):
		match strike_number:
			0:
				strike.strike(1)
				strike_number += 1
				incorrect.play()
			1:
				strike.strike(2)
				strike_number += 1
				incorrect.play()
			2:
				strike.strike(3)
				incorrect.play()
