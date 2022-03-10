#!/bin/bash

scp -r rule_provider/* root@openwrt:/etc/openclash/rule_provider/

python gen.py
if [ "$1" = "push" ]; then
   echo "--------------------"
    git add .
    git commit -m "auto push"
    git push origin --all
fi
