# Changelog

## [0.9.0] - 2026-10-31

### Changed

- Track [Hearth 0.9.0](https://github.com/knowald/ha-hearth/releases/tag/0.9.0)

### Added

- Fade the screen to black and back when the presence sensor changes
- Wait a set time after the presence sensor clears before the screen changes
- Show a dimmed sleep screen instead of black while nobody is around
- Show what the presence sensor reads under its setting
- Start the sleep screen after 15 or 30 seconds

### Fixed

- Keep the screen as it is when the presence sensor becomes unavailable
- Keep the screen dark when an automation puts it to sleep while nobody is around

## [0.8.0] - 2026-10-30

### Changed

- Track [Hearth 0.8.0](https://github.com/knowald/ha-hearth/releases/tag/0.8.0)
- **Breaking:** Require a Home Assistant token for every save, so scripts that save without one now get an error
- Put every setting in one Settings sheet, with a section list and a search field

### Added

- Let AI agents and scripts change the dashboard through an agent API or an MCP server
- Move the dashboard a few pixels once a minute to protect OLED screens from burn-in
- Preview the sleep screen in Settings and change its clock font, position and background
- Keep a screen black while a presence sensor reports nobody around
- Keep the dashboard in the add-on config folder, where the SSH and Samba add-ons and Home Assistant backups reach it. The first start copies it over from the old location

## [0.7.0] - 2026-10-05

### Changed

- Track [Hearth 0.7.0](https://github.com/knowald/ha-hearth/releases/tag/0.7.0)
- Group Hearth's settings by what they affect, with per-screen settings under This screen

### Added

- Show Hearth in every language Home Assistant supports
- Tap a card to edit it, duplicate cards, move them between pages and undo a removal
- Ask before unsaved changes are dropped
- Set tap and hold actions on tiles
- Let automations switch pages and wake or sleep the screen
- Show to-do lists and render templates in cards
- Show photos, a sky that follows the sun or the playing track on the sleep screen
- Change the theme on a schedule or by season

## [0.6.0] - 2026-10-03

### Changed

- Track [Hearth 0.6.0](https://github.com/knowald/ha-hearth/releases/tag/0.6.0), which includes [Hearth 0.5.1](https://github.com/knowald/ha-hearth/releases/tag/0.5.1)

### Added

- Scale the whole interface from 50 to 200 percent, with a separate scale for phones
- Set separate side and top/bottom padding for phones
- Show a small clock with the date at the start of the phone page strip
- Highlight an entity tile from another entity or a list of states

### Fixed

- Give the media popup's playback controls the full width on phones
- Show at most two columns per card on phones, and one tile per row while editing
- Stop a vertical drag or a second finger on a light or blind tile from toggling it
- Set a popup slider where you tap it
- Keep sheets, toasts and the edit button clear of the notch and the home indicator
- Stop iOS from zooming in when you tap a text field
- Make drag handles, progress bars and volume bars easier to touch

## [0.5.0] - 2026-09-28

### Changed

- Track [Hearth 0.5.0](https://github.com/knowald/ha-hearth/releases/tag/0.5.0), which adds a movable sidebar, swipe between pages, alerts and sleep screen images

## [0.4.0] - 2026-09-26

### Changed

- Track [Hearth 0.4.0](https://github.com/knowald/ha-hearth/releases/tag/0.4.0), which adds web page cards, background images and WebRTC camera support

### Added

- Add the beta and edge add-ons, which follow Hearth prereleases and the latest `master` build

## [0.3.0] - 2026-09-23

### Changed

- Track [Hearth 0.3.0](https://github.com/knowald/ha-hearth/releases/tag/0.3.0), which explains connection and configuration errors on screen

## [0.2.0] - 2026-09-22

### Changed

- Track [Hearth 0.2.0](https://github.com/knowald/ha-hearth/releases/tag/0.2.0), which adds YAML export and import, saved versions and a better phone layout

## [0.1.3] - 2026-09-21

### Fixed

- Track [Hearth 0.1.3](https://github.com/knowald/ha-hearth/releases/tag/0.1.3), which fixes the Invalid redirect URI error in Ingress

## [0.1.2] - 2026-09-21

### Fixed

- Track [Hearth 0.1.2](https://github.com/knowald/ha-hearth/releases/tag/0.1.2), which fixes login through Nabu Casa Ingress

## [0.1.1] - 2026-09-21

### Changed

- Publish images on releases only, so development pushes no longer overwrite released versions

### Added

- Add the optional `hass_public_url` setting for direct-port access

### Fixed

- Track [Hearth 0.1.1](https://github.com/knowald/ha-hearth/releases/tag/0.1.1), which fixes login through HTTPS Ingress and Nabu Casa

## [0.1.0] - 2026-09-20

_Initial release, tracking [Hearth 0.1.0](https://github.com/knowald/ha-hearth/releases/tag/0.1.0)._

[0.9.0]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.9.0
[0.8.0]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.8.0
[0.7.0]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.7.0
[0.6.0]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.6.0
[0.5.0]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.5.0
[0.4.0]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.4.0
[0.3.0]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.3.0
[0.2.0]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.2.0
[0.1.3]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.1.3
[0.1.2]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.1.2
[0.1.1]: https://github.com/knowald/addon-ha-hearth/releases/tag/0.1.1
[0.1.0]: https://github.com/knowald/addon-ha-hearth/tree/e467ebb
