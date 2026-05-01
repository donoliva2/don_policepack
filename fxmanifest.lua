fx_version 'cerulean'
game 'gta5'

name 'armorybox'
author 'DON'
description 'Police Armory Box'

lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

dependencies {
    'ox_inventory',
    'ox_lib'
}
