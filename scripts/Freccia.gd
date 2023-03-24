@tool
extends Node3D

var tex: CompressedTexture2D

@export var texture: CompressedTexture2D:
	get:
		return tex
	set(value):
		$freccia_Mesh.material_override.albedo_texture = value
		tex = value

