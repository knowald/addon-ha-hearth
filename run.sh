#!/usr/bin/with-contenv bashio

# the server proxies /api/ and /local/ to Home Assistant; on the supervisor
# network it answers to its own hostname
export HASS_URL="http://homeassistant:$(bashio::core.port)"
# Ingress uses the browser's HA origin. Direct access needs a URL the
# browser can reach, independently of the internal server proxy target.
export HASS_PUBLIC_URL=""
if bashio::config.has_value 'hass_public_url'; then
    HASS_PUBLIC_URL="$(bashio::config 'hass_public_url')"
fi

export EXPOSED_PORT=$(bashio::addon.port "8099/tcp")

# Versions before the config folder kept the dashboard in /data. Copy it over
# once; /data keeps its copy so an older version still finds its files.
if [ ! -e /data/.moved-to-config ] && [ -e /data/hearth.yaml ] && [ ! -e /config/hearth.yaml ]; then
    bashio::log.info "Moving the dashboard to the add-on config folder"
    # hearth.yaml goes last: its presence in /config marks the move as done
    for entry in configuration.yaml custom_css.css custom_javascript.js \
        hearth-themes hearth-images backups hearth.yaml; do
        if [ -e "/data/${entry}" ]; then
            cp -a "/data/${entry}" /config/ || bashio::exit.nok "Could not copy ${entry} to /config"
        fi
    done
    touch /data/.moved-to-config
fi

echo "Starting Hearth..."

node server.js
