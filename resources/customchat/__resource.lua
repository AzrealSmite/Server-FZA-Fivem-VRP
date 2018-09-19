description 'chat management stuff'

ui_page 'html/chat.html'

export 'printChatLine'

client_scripts { 
  "lib/Proxy.lua",
  "lib/Tunnel.lua",
  "chat_client.lua"
}


server_scripts { 
  "@vrp/lib/utils.lua",
  "chat_server.lua"
}

files {
    'html/chat.html',
    'html/chat.css',
    'html/chat.js',
    'html/jquery.faketextbox.js',
    "Roboto-Bold.ttf",
}
