# -------------------------------------------------------------
# !!!!!!! DO NOT EDIT !!!!!!!!
# Config file automatically generated by <infra-setup>
# Purpose     : Provide Nginx config to a specific server
# Server name : <%= domain %>
# Date        : <%= date %>
# -------------------------------------------------------------

map $http_upgrade $connection_upgrade {
	default upgrade;
	''      close;
}

server {
	listen 80 default_server;
	listen [::]:80 default_server;
    server_name *.<%= jitsi_domain %>;
	include /etc/jitsi/meet.conf;
}

server {
	listen 443 ssl http2;
	listen [::]:443 ssl http2;
	server_name *.<%= jitsi_domain %>; 
	include /etc/jitsi/ssl.conf;
	include /etc/jitsi/meet.conf;
}

