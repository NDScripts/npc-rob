fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'N&D Scripts | Danny'
version '1.5.0'
description '[FREE] Npc Rob by N&D Scripts'


shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}


client_scripts {

    'config.lua',
    'client/*.lua'
}


server_script {
    'config.lua',
    'server/*.lua'
}

