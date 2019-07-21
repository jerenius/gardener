#!/bin/bash


chmod 755 /usr/src/app/temperature.py
chmod 755 /usr/src/app/temp-loop.py

echo "*/5 * * * * root /usr/src/app/temperature.py" >>/etc/crontab

#node-red --settings /settings.js &

#/usr/src/app/temperature.py

## Start supervisord
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf -n &
trap "supervisorctl shutdown && wait" SIGTERM
wait
