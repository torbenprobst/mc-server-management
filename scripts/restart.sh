#!/bin/bash

function rcon {
  <path-to-mcrcon-executable> -H 127.0.0.1 -P 25575 -p <rcon-password> "$1"
}

rcon "say Server restartet in 5 Minuten"
sleep 60s

rcon "say Server restartet in 4 Minuten"
sleep 60s

rcon "say Server restartet in 3 Minuten"
sleep 60s

rcon "say Server restartet in 2 Minute"
sleep 60s

rcon "say Server restartet in 1 Minute"
sleep 30s

rcon "say Server restarting in 30 seconds"
sleep 15s

rcon "say Server restarting in 15 seconds"
sleep 5s

rcon "say Server restarting in 10 seconds"
sleep 5s

rcon "say Server restarting in 5 seconds"
sleep 1s

rcon "say Server restarting in 4 seconds"
sleep 1s

rcon "say Server restarting in 3 seconds"
sleep 1s

rcon "say Server restarting in 2 seconds"
sleep 1s

rcon "say Server restarting in 1 second"
sleep 2s

rcon "say Server restartet jetzt!"

systemctl --user restart <mc-service-name>