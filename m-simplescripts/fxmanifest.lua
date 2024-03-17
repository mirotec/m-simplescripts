fx_version 'cerulean'
game 'gta5'

name "m-simplescripts"
description "Pack of simple scripts"
author "Miro"
version "1.0.0"

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

server_export 'DiscordLogS'
