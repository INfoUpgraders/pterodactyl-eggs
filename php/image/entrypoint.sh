#!/bin/bash
cd /home/container

php -v

MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`

bash /start.sh "${MODIFIED_STARTUP}"