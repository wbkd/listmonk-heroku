#!/usr/bin/env bash

if [ ! -f config/listmonk.toml ]; then
  echo "Compiling listmonk config file"
  erb config/listmonk.toml.erb > config/listmonk.toml
fi

# Update and start
./listmonk --config=config/listmonk.toml --upgrade --yes
./listmonk --config=config/listmonk.toml
