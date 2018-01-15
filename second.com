##
#ATTRIBUTION: Used Default file as reference for this file

##

# Default server configuration


server {
        listen 80;
        listen [::]:80;

        root /home/kshitij/www/main;

        index second.html;

        server_name hw01.webdevmourya.com;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
      }


