#!/usr/bin/env bash

if [ ! -f config/listmonk.toml ]; then
  echo "Compiling listmonk config file"
  erb config/listmonk.toml.erb > config/listmonk.toml
fi

# Download the latest release.
URL=$( curl -s https://api.github.com/repos/knadh/listmonk/releases | grep -m 1 -o 'https://.*linux_amd64.tar.gz' )

curl -fsSL $URL | tar xzf -

touch /tmp/app-initialized

# Install the DB schema.
./listmonk --config=config/listmonk.toml --install --yes

