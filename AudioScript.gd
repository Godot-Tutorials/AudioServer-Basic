extends AudioStreamPlayer

const BUS_LAYOUT: String = "res://default_bus_layout.tres"
const MASTER_IDX: int = 0
const BUS_NAME: String = "Master"

func _ready() -> void:
	AudioServer.set_bus_layout(load(BUS_LAYOUT))
	
	# Index 0 is Master
	AudioServer.add_bus_effect(MASTER_IDX, AudioEffectChorus.new())
	AudioServer.add_bus_effect(MASTER_IDX, AudioEffectDistortion.new())
	
	print("Index value of Master: ", AudioServer.get_bus_index(BUS_NAME)) # -1 means index not found
	print("How Many Buses in ", BUS_LAYOUT, ": ", AudioServer.get_bus_count())
	print("How Many Bus Effects on Master: ", AudioServer.get_bus_effect_count(MASTER_IDX))
