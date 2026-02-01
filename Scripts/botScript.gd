#extends Node3D
#
#enum {
	#IDLE, 
	#ALERT,
	#STUNNED
#}
#
#var state = IDLE
#var target
#const TURN_SPEED = 15 
#
#@onready var player = $BotSprite/AnimationPlayer
#@onready var eyes = $Eyes
#
#func _ready() -> void:
	#print("running")
	#pass
#
#func _process(delta: float) -> void:
	#match state:
		#IDLE: 
			#player.play("Idle")
		#ALERT:
			#player.play("Alert")
			#var target_dir = (target.global_position - global_position).normalized()
			#var target_yaw = atan2(target_dir.x, target_dir.z)
			#var current_yaw = rotation.y
			#var new_yaw = lerp_angle(current_yaw, target_yaw, TURN_SPEED * delta)
			#rotation.y = new_yaw
		#STUNNED:
			#player.play("Stunned")
#
#
#func _on_sight_range_body_entered(body: Node3D) -> void:
	#print(body)
	#print(body.is_in_group("Target"))
	#print(body.get_groups())
	#
	#if body.is_in_group("Player"):
		#state = ALERT
		#target = body
	#
	#if Input.is_action_pressed("shoot"):
		#state = STUNNED
	#else:
		#state = IDLE
#
#
#func _on_sight_range_body_exited(body: Node3D) -> void:
	#state = IDLE
