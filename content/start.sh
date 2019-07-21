#!/bin/bash


ln -sf /usr/bin/python3.5 /usr/bin/python
chmod 755 /usr/src/app/temperature.py
#echo "*/1 *   *  *   *    /usr/src/app/temperature.py" >>/var/spool/cron/crontabs/root
echo "*/2 * * * * root /usr/src/app/temperature.py" >>/etc/crontab

node-red --settings /settings.js


cron 
