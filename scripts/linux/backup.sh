#!/bin/bash
if [ `basename $(pwd)` == "server" ]; then
    echo "wrong directory, please run this script from the root of the server directory"
else
    rm -rf backups
    cp -r server/backups backups
fi