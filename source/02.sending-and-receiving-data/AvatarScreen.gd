extends Control

const ADDRESS = "127.0.0.1"
const PORT = 9999

@onready var texture_rect = $AvatarCard/TextureRect
@onready var label = $AvatarCard/Label


func _ready():
	var packet = PacketPeerUDP.new()
	packet.connect_to_host(ADDRESS, PORT)
	request_authentication(packet)


func request_authentication(packet):
	pass


func request_avatar(packet):
	pass
