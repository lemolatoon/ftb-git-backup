#!/bin/bash
cp ./whitelist.json ./server/whitelist.json
sed -i "s/white-list=false/white-list=true/" ./server/server.properties