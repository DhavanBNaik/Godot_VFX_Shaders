extends Node3D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		if not animation_player.is_playing():
			animation_player.play("EnergyBeam")
