@tool
extends MeshInstance3D

@export_tool_button("Log", "Callable") 
var action = get_data


func get_data() -> void:
	var vertices = (mesh as PlaneMesh).get_mesh_arrays()[Mesh.ARRAY_VERTEX]
	print(vertices.size())
