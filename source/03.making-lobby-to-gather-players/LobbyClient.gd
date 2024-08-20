extends Control

const ADDRESS = "127.0.0.1"
const PORT = 9999

@export var avatar_card_scene = preload("res://03.making-lobby-to-gather-players/AvatarCard.tscn")

@onready var avatar_card_container = $AvatarCardsScrollContainer/AvatarCardsHBoxContainer

var peer = ENetMultiplayerPeer.new()


func _ready():
	pass

@rpc
func add_avatar(avatar_name, texture_path):
	pass


@rpc
func clear_avatars():
	pass


@rpc
func retrieve_avatar(user, session_token):
	pass


@rpc
func authenticate_player(user, password):
	pass


@rpc
func authentication_failed(error_message):
	pass


@rpc
func authentication_succeed(user, session_token):
	pass
