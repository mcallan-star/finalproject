# This script is an autoload, that can be accessed from any other script!

extends Node2D

var score : int = 0

var Ghosts: Array[Ghost] = []

var persistent_ghosts: Array = []

func store_ghosts():
		# Store the ghosts temporarily before unloading the scene
		persistent_ghosts.clear()
		for ghost in Ghosts:
				ghost.get_parent().remove_child(ghost)  # Temporarily remove from the scene tree
				persistent_ghosts.append(ghost)

func restore_ghosts(player):
		# Reattach the ghosts to the new scene tree
		for ghost in persistent_ghosts:
				get_tree().root.add_child(ghost)  # Re-attach to the current scene
				ghost.position = player.position
				ghost.player = player

# Adds 1 to score variable
func add_score():
	score += 1

# Loads next level
func load_next_level(next_scene : PackedScene):
	get_tree().change_scene_to_packed(next_scene)
