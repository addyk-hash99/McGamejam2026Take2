#extends Node3D
#
#
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#print(get_all_groups(self))
	#
#
#func get_all_groups(root: Node) -> Array:
	#var groups: Array[String] = []
	#var seen = {}
	#_collect_groups(root, groups, seen)
	#return groups
#
#func _collect_groups(node: Node, groups: Array, seen: Dictionary):
	#for g in node.get_groups():
		#if not seen.has(g):
			#seen[g] = true
			#groups.append(g)
	#for child in node.get_children():
		#_collect_groups(child, groups, seen)
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
