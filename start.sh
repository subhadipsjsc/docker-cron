#!/bin/bash

printenv | grep -E "^DOCKER_" > /app/project_env.sh 
cat /app/project_env.sh /app/crontab > /etc/cron.d/crontab

chmod 0644 /etc/cron.d/crontab 
/usr/bin/crontab /etc/cron.d/crontab 

cron -f

# /usr/local/bin/python /app/project/run.py