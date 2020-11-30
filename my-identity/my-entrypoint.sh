#!/bin/bash

export ALLOW=$(curl https://www.gstatic.com/ipranges/cloud.json 2> /dev/null | sed -n -e "s~.*ipv4Prefix\":\s\"\([0-9\./]*\)\".*$~\1~p" | tr "\n" " ")

/entrypoint.sh rsync_server
