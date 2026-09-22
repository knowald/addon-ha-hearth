# Changelog

## [0.3.0] - 2026-09-23

### Changed

- Track [Hearth 0.3.0](https://github.com/knowald/ha-hearth/releases/tag/0.3.0): the boot screen explains a failed connection and offers Retry, sign-in waits for Home Assistant to accept the token, unreadable configuration files are reported instead of silently replaced, garage doors and gates confirm on every path, the back button closes popups and sheets, and editors, tiles and rail widgets behave the same across surfaces

## [0.2.0] - 2026-09-22

### Changed

- Track [Hearth 0.2.0](https://github.com/knowald/ha-hearth/releases/tag/0.2.0): the configuration editor exports and imports YAML files, every save keeps a restorable version of the dashboard, the phone layout folds the rail around the page, and importing from Home Assistant builds a page per area with its cameras, covers, thermostats and sensors

## [0.1.3] - 2026-09-21

### Fixed

- Track [Hearth 0.1.3](https://github.com/knowald/ha-hearth/releases/tag/0.1.3), which reuses the Home Assistant app panel login so embedded Ingress no longer hits Invalid redirect URI

## [0.1.2] - 2026-09-21

### Fixed

- Track [Hearth 0.1.2](https://github.com/knowald/ha-hearth/releases/tag/0.1.2), which restores Nabu Casa Ingress login with the forwarded origin and OAuth redirect URL

## [0.1.1] - 2026-09-21

### Changed

- Publish images on releases rather than on every push, so development pushes no longer overwrite released versions

### Added

- Add the optional `hass_public_url` setting for direct-port access; Ingress always uses the current Home Assistant origin

### Fixed

- Track [Hearth 0.1.1](https://github.com/knowald/ha-hearth/releases/tag/0.1.1), which fixes HTTPS Ingress and Nabu Casa login, retry recovery, dashboard links and the configuration editor dependency

## [0.1.0] - 2026-09-20

_Initial release, tracking [Hearth 0.1.0](https://github.com/knowald/ha-hearth/releases/tag/0.1.0)._

[0.3.0]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.3.0
[0.2.0]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.2.0
[0.1.3]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.1.3
[0.1.2]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.1.2
[0.1.1]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.1.1
[0.1.0]: https://github.com/knowald/addon-ha-hearth/tree/e467ebb
