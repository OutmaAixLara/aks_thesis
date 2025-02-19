#!/bin/sh

PASSWORD=$(cat /etc/redis-passwd/passwd)
    redis-server --requirepass $PASSWORD
