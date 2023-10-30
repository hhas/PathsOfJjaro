extends MeshInstance3D


func _ready() -> void:
	var mpAPI = get_tree().get_multiplayer()
	if mpAPI.has_multiplayer_peer():
		if not mpAPI.is_server():
			set_layer_mask(4)