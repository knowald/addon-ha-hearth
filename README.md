# addon-ha-hearth

Home Assistant add-on for [Hearth](https://github.com/knowald/ha-hearth), a dashboard for wall tablets, phones and desktops.

## Install

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fknowald%2Faddon-ha-hearth)

To add the repository by hand, open Settings, Add-ons, Add-on Store, then Repositories from the overflow menu, and paste `https://github.com/knowald/addon-ha-hearth`. Install Hearth from the store once the repository is listed, then start it.

Hearth appears in the sidebar and is served over Ingress. Setting a port in the add-on configuration exposes it directly as well, which is what wall tablets should use. Dashboard configuration is stored on the add-on's own volume and survives updates.

## Direct access

When exposing a port for a wall tablet, set **Home Assistant URL for direct access**
(`hass_public_url`) in the add-on configuration to a Home Assistant address the
browser can reach, for example:

```yaml
hass_public_url: http://homeassistant.local:8123
```

If Hearth is served over HTTPS, use an HTTPS Home Assistant URL, such as your
Nabu Casa address. Restart the add-on after changing this setting.

Ingress requires no URL configuration and always uses the current Home Assistant
origin, even when this option is set. The server continues using the internal
Home Assistant address for proxy requests.

This option requires a Hearth release containing
[the Ingress authentication fix](https://github.com/knowald/ha-hearth/pull/7).
The add-on must be updated to that matching version when it is released.

## How it builds

`version` in `config.yaml` names the `ha-hearth` tag the image is built from, so the add-on and the application move together. Pushing to `main` builds `ghcr.io/knowald/addon-ha-hearth-{arch}` for `aarch64` and `amd64` against pinned Home Assistant base images.

The published container packages must be public for the Supervisor to pull them. GitHub creates them private on the first push; change that once per package under Packages, Package settings, Change visibility. Later pushes keep the setting.
