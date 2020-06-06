#!/bin/bash
if [ -z "$STEP" ]; then
    echo "La variable d’environnement STEP doit être valuée"
    return 1
fi

while true;
do
    echo $1 \($(date +%H:%M:%S)\) >> /usr/app/logs.txt
    sleep "$STEP";
done
