fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Danny'

description 'Npc Rob'


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

