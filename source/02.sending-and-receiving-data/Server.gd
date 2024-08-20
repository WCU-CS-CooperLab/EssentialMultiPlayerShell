extends Node

const PORT = 9999

# make sure this path points to your FakeDatabase.json file
@export var database_file_path = "res://02.sending-and-receiving-data/FakeDatabase.json"

var database = {}
var logged_users = {}



func _ready():
	pass


func _process(delta):
	pass


func load_database(path_to_database_file):
	pass


func authenticate_player(peer, message):
	pass


func get_authentication_token(peer, message):
	pass


func get_avatar(peer, message):
	pass