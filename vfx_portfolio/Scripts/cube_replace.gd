extends Node3D

@export var fractured_model:PackedScene

func _unhandled_input(event: InputEvent) -> void:
	
	if Input.is_action_just_pressed("ui_accept"):
		
		var fracture_inst:Node3D = fractured_model.instantiate()
		get_parent().add_child(fracture_inst)
		fracture_inst.transform = self.transform
		
		self.queue_free()
