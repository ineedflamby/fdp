#!/bin/bash

command="yarn cli mint -i 45ee725c2c5993b3e4d308842d87e973bf1951f5f7a804b21e4dd964ecd12d6b_0 5 --fee-rate 3500"

while true; do
    $command
    result=$?

    if [ $result -ne 0 ]; then
        echo "Mint failed, error code: $result"
        exit 1
    fi

    sleep 3
done
