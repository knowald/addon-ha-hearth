# addon-ha-hearth

Home Assistant add-on for [Hearth](https://github.com/knowald/ha-hearth), a dashboard for wall tablets, phones and desktops.

## Install

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fknowald%2Faddon-ha-hearth)

To add the repository by hand, open Settings, Add-ons, Add-on Store, then Repositories from the overflow menu, and paste `https://github.com/knowald/addon-ha-hearth`. Install Hearth from the store once the repository is listed, then start it.

Hearth appears in the sidebar and is served over Ingress. Setting a port in the add-on configuration exposes it directly as well, which is what wall tablets should use. Dashboard configuration is stored on the add-on's own volume and survives updates.

## Channels

The repository offers three add-ons. Each has its own data, so they can run side by side.

- **Hearth** tracks stable Hearth releases.
- **Hearth (beta)** tracks Hearth prereleases and falls back to the stable version between betas.
- **Hearth (edge)** tracks the Hearth development branch. It updates at most once a day, only after that commit's checks pass, and may break without notice.

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

This option is available from version `0.1.1`.

## How it builds

`version` in `config.yaml` names the `ha-hearth` tag the image is built from, so the add-on and the application move together. Publishing a matching GitHub release builds `ghcr.io/knowald/addon-ha-hearth-{arch}` for `aarch64` and `amd64` against pinned Home Assistant base images. All three add-ons share these images: stable versions are also tagged `latest`, betas `beta` and edge builds `edge`.

The edge add-on is built by the same workflow on a nightly schedule. It reads the newest `master` commit of `ha-hearth`, skips it unless its CI passed or it is already published, builds it as `<hearth version>-edge.<commit>`, and then commits that version to `edge/config.yaml` so the Supervisor offers the update only once both images exist. Run the workflow by hand with the `edge` channel to publish sooner.

The published container packages must be public for the Supervisor to pull them. GitHub creates them private on the first push; change that once per package under Packages, Package settings, Change visibility. Later pushes keep the setting.

## Releasing

Publish the matching Hearth source tag first. Then update `version` in `config.yaml`
and `CHANGELOG.md`, push the changes, and publish a GitHub release with that exact
tag (no `v` prefix). The workflow verifies that the tag matches the configured
version and publishes both architecture images. Ordinary pushes do not publish
images. Manual recovery builds must run from the matching release tag.

For a beta, set `version` in `beta/config.yaml` to the Hearth prerelease tag, such
as `0.4.0-beta.1`, and publish the GitHub release as a pre-release. Tags with a
`-` suffix must be pre-releases and read `beta/config.yaml`; other tags must not
be. Betas get no `CHANGELOG.md` entry. When the stable version ships, set
`beta/config.yaml` to it as well so beta users move onto it.

`CHANGELOG.md` follows [Common Changelog](https://common-changelog.org/): one
`## [VERSION] - YYYY-MM-DD` entry per stable release, newest first, with `Changed`,
`Added`, `Removed` and `Fixed` groups in that order, imperative entries, and a
reference link per version at the bottom. The Hearth version an add-on release
tracks goes under `Changed`, or `Fixed` when that Hearth release only fixes bugs,
linked to its Hearth release.
