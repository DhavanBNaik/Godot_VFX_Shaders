extends Node3D

@export var IMPULSE_FORCE:float = 50
@export var RETURN_TIME:float = 4.0
@export var whole_cube:PackedScene


var orginal_transforms: Array[Transform3D] = []

func _ready() -> void:
	
	for cell in get_children():
		orginal_transforms.append(cell.transform)
	
	for cell:RigidBody3D in get_children():
		cell.apply_central_impulse(cell.get_child(0).position * IMPULSE_FORCE)

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		start_return()

func start_return() -> void:
	for i in get_child_count():
		var cell:RigidBody3D = get_child(i)
		cell.freeze = true
		var tween = create_tween()
		tween.tween_property(cell, "transform", orginal_transforms[i], RETURN_TIME).set_trans(tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
		
	await get_tree().create_timer(RETURN_TIME).timeout
	
	var whole_inst:Node3D = whole_cube.instantiate()
	get_parent().add_child(whole_inst)
	whole_inst.transform = self.transform
	
	self.queue_free()
	
