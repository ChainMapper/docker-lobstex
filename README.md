# docker-lobstex
Wallet and daemon for Lobstex [LOBS] cryptocurrency on docker

# Quickstart
Type `docker run -it joshendriks/lobstex` and see the wallet starting.

```
Docker Lobstex wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
LOBS: LfVjj2bo7Lxm8zKmyV6asdjeGu5s35pJhk

Starting LOBS daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/lobstex.conf` and `/config/wallet.data`

# Donations:
BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk

LOBS: LfVjj2bo7Lxm8zKmyV6asdjeGu5s35pJhk

# License
MIT, see LICENSE file