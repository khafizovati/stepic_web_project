#!/bin/sh
set -x
sudo ls -l /home/box/web
sudo ps -o pid,euser,egroup,comm,args -C nginx
sudo adduser www-data box
sudo adduser nginx box
sudo adduser root box
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/
sudo unlink /etc/nginx/sites-enabled/default
sudo rm /home/box/web/etc/error.log
sudo /etc/init.d/nginx restart

