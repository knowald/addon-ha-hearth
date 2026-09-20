#!/usr/bin/with-contenv bashio

# the server proxies /api/ and /local/ to Home Assistant; on the supervisor
# network it answers to its own hostname
export HASS_URL="http://homeassistant:$(bashio::core.port)"
export EXPOSED_PORT=$(bashio::addon.port "8099/tcp")

echo "Starting Hearth..."

node server.js
