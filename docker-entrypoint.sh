#!/bin/sh
if [ -n $MAP_DOMAINS ]; then
  HOST_IP="$(ping -c 1 host.docker.internal | head -n 1 | cut -d " " -f3 | grep -o -E "[0-9.]+")"
  for i in $(echo $MAP_DOMAINS | sed "s/;/ /g"); do
    echo "$HOST_IP $i" | sudo tee -a /etc/hosts > /dev/null
  done
fi

exec "$@"