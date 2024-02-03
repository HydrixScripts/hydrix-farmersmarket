fx_version 'cerulean'
game 'gta5'

lua54 'yes'

shared_scripts {
    'shared/sh_*.lua',
}

client_script {
  --'@mercy-assets/client/cl_errorlog.lua', this is what it originally looks like change this or the ones below to your folder names / renamed framework name or use default mercy-
    '@irp-assets/client/cl_errorlog.lua',
    'client/cl_*.lua',
}

server_script {
    '@irp-assets/server/sv_errorlog.lua',
    'server/sv_*.lua',
}
