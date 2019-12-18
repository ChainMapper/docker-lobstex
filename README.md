# docker-lobstex
Wallet and daemon for Lobstex [LOBS] cryptocurrency on docker

# Quickstart
Type `docker run -it -e "USER=secrettop" -e "PASSWORD=topsecret" -e "RPCALLOW=127.0.0.1" chainmapper/lobstex` and see the wallet starting.

Alternatively type `docker run -it -v "<path_to_config>:/config/lobstex.conf" chainmapper/lobstex` to use your own config.

```
Docker LOBS wallet

By: ChainMapper
Website: https://chainmapper.com

Starting LOBS daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/lobstex.conf` and `/config/wallet.data`

# License
MIT, see LICENSE file