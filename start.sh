#!/bin/bash
echo "Docker LOBS wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/ 

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
LOBS: LfVjj2bo7Lxm8zKmyV6asdjeGu5s35pJhk"

config="/config/lobstex.conf"
if [ -f "$config" ]
then
    echo "Using $config"
    cp $config /data/.lobstex/lobstex.conf
fi

wallet="/config/wallet.dat"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet /data/.lobstex/wallet.dat
fi

echo "Starting LOBS daemon..."
lobstexd
