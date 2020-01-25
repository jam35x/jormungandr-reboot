#!/bin/bash
# restart systemctl service on node stuck

sleep 900
lastBlockDate=`./jcli rest v0 node stats get -h http://127.0.0.1:<PORT>/api | grep lastBlockDate | tr -d -c .0-9`

while true
do
  sleep 300
  lastBlockDate300=`./jcli rest v0 node stats get -h http://127.0.0.1:<PORT>/api | grep lastBlockDate | tr -d -c .0-9`
  if [[ "$lastBlockDate" != "$lastBlockDate300" ]]; then
        lastBlockDate=$lastBlockDate300
  else
      	now=$(date)
        echo $now: stoping jormungandr.....
        sudo systemctl stop jormun
        sleep 60
        now=$(date)
        echo $now: starting jormungandr.....
        sudo systemctl start jormun
        sleep 600
  fi
done
