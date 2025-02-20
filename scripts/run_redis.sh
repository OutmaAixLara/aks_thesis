#!/bin/sh

if [ -f /etc/redis-passwd/passwd ]; then
    PASSWORD=$(cat /etc/redis-passwd/passwd)
    redis-server --requirepass $PASSWORD
else
    echo "Password file not found!"
    exit 1
fi
