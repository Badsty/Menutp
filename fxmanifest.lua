fx_version "cerulean"
game "gta5"

author 'spoody'

ui_page "html/index.html"

files {
	"html/index.html",
	"html/js/jquery-3.6.0.min.js",
	"html/img/*png",
	"html/js/listener.js",
	"html/style.css",
	"html/pdown.ttf"
}

shared_script "config.lua"
server_script "server.lua"
client_script "client.lua"