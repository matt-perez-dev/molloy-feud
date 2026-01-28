extends Node2D
@onready var strike1 = $"1strike"
@onready var strike2 = $"2strike"
@onready var strike3 = $"3strike"
@onready var animation = $AnimationPlayer

func strike(number):
	match number:
		1:
			animation.current_animation = "strike1"
		2:
			animation.current_animation = "strike2"
		3:
			animation.current_animation = "strike3"
		
