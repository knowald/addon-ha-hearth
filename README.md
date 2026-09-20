# addon-ha-hearth

Home Assistant add-on for [Hearth](https://github.com/knowald/ha-hearth).

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fknowald%2Faddon-ha-hearth)

The add-on builds the `ha-hearth` tag named by `version` in `config.yaml`. Dashboard configuration is stored on the add-on's own volume, so it survives updates.

Hearth is reachable through the sidebar panel over Ingress. Setting a port in the add-on configuration also exposes it directly, which is what wall tablets should use.
