#!/bin/bash
echo ruok | nc localhost 2181 | grep imok > /dev/null
if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi