#!/bin/bash


ln -sf /usr/bin/python3.5 /usr/bin/python
chmod 755 /usr/src/app/temperature.py
echo "*/1 *   *  *   *    /usr/src/app/temperature.py" >>/var/spool/cron/crontabs/root
#node-red --settings /settings.js


/etc/init.d/cron start
