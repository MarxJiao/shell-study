#!/bin/bash
sed -i '/$include : module_iknow_ql/,$ d' pusher_talk.conf
sed -i '/$include : machine_iknow_ql/,$ d' pusher_clients.conf
COUNTER=1
while [ $COUNTER -lt 50 ]
do
    cp module_iknow_ql.conf module_iknow_ql$COUNTER.conf
    sed -i 's/iknow_ql/iknow_ql'$COUNTER'/' module_iknow_ql$COUNTER.conf
    cp machine_iknow_ql.conf machine_iknow_ql$COUNTER.conf
    sed -i 's/iknow_ql/iknow_ql'$COUNTER'/' machine_iknow_ql$COUNTER.conf
    sed -i '$ a$include : machine_iknow_ql'$COUNTER'.conf' pusher_clients.conf
    sed -i '$ a$include : module_iknow_ql'$COUNTER'.conf' pusher_talk.conf
    ((COUNTER++))
    echo $COUNTER
done