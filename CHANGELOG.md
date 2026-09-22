## 0.2.0

- Track [Hearth 0.2.0](https://github.com/knowald/ha-hearth/releases/tag/0.2.0): the configuration editor exports and imports YAML files, every save keeps a restorable version of the dashboard, the phone layout folds the rail around the page, and importing from Home Assistant builds a page per area with its cameras, covers, thermostats and sensors.

## 0.1.3

- Track [Hearth 0.1.3](https://github.com/knowald/ha-hearth/releases/tag/0.1.3), reusing the Home Assistant app panel login so embedded Ingress no longer hits Invalid redirect URI.

## 0.1.2

- Track [Hearth 0.1.2](https://github.com/knowald/ha-hearth/releases/tag/0.1.2), restoring Nabu Casa Ingress login using Fusion's forwarded origin and OAuth redirect URL.

## 0.1.1

- Track [Hearth 0.1.1](https://github.com/knowald/ha-hearth/releases/tag/0.1.1), fixing HTTPS Ingress and Nabu Casa login, retry recovery, dashboard links and the configuration editor dependency.
- Add the optional `hass_public_url` setting for direct-port access; Ingress always uses the current Home Assistant origin.
- Publish images on releases rather than every push to avoid overwriting released versions during development.

## 0.1.0

Initial release, tracking [Hearth 0.1.0](https://github.com/knowald/ha-hearth/releases/tag/0.1.0).
