# MonoYou Folders

Minimal folder icon themes based on Papirus, available in three tonal variants: **Cold**, **Neutral** and **Warm**.

## Preview

### Cold

| Default | Home | Documents | Downloads | Pictures | Music | Videos |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| ![Default](icons/MonoYou-Folders-Cold/64x64/places/folder-grey.svg) | ![Home](icons/MonoYou-Folders-Cold/64x64/places/folder-grey-home.svg) | ![Documents](icons/MonoYou-Folders-Cold/64x64/places/folder-grey-documents.svg) | ![Downloads](icons/MonoYou-Folders-Cold/64x64/places/folder-grey-download.svg) | ![Pictures](icons/MonoYou-Folders-Cold/64x64/places/folder-grey-pictures.svg) | ![Music](icons/MonoYou-Folders-Cold/64x64/places/folder-grey-music.svg) | ![Videos](icons/MonoYou-Folders-Cold/64x64/places/folder-grey-videos.svg) |

### Neutral

| Default | Home | Documents | Downloads | Pictures | Music | Videos |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| ![Default](icons/MonoYou-Folders-Neutral/64x64/places/folder-grey.svg) | ![Home](icons/MonoYou-Folders-Neutral/64x64/places/folder-grey-home.svg) | ![Documents](icons/MonoYou-Folders-Neutral/64x64/places/folder-grey-documents.svg) | ![Downloads](icons/MonoYou-Folders-Neutral/64x64/places/folder-grey-download.svg) | ![Pictures](icons/MonoYou-Folders-Neutral/64x64/places/folder-grey-pictures.svg) | ![Music](icons/MonoYou-Folders-Neutral/64x64/places/folder-grey-music.svg) | ![Videos](icons/MonoYou-Folders-Neutral/64x64/places/folder-grey-videos.svg) |

### Warm

| Default | Home | Documents | Downloads | Pictures | Music | Videos |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| ![Default](icons/MonoYou-Folders-Warm/64x64/places/folder-grey.svg) | ![Home](icons/MonoYou-Folders-Warm/64x64/places/folder-grey-home.svg) | ![Documents](icons/MonoYou-Folders-Warm/64x64/places/folder-grey-documents.svg) | ![Downloads](icons/MonoYou-Folders-Warm/64x64/places/folder-grey-download.svg) | ![Pictures](icons/MonoYou-Folders-Warm/64x64/places/folder-grey-pictures.svg) | ![Music](icons/MonoYou-Folders-Warm/64x64/places/folder-grey-music.svg) | ![Videos](icons/MonoYou-Folders-Warm/64x64/places/folder-grey-videos.svg) |

## Requirements

Install [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) before proceeding. MonoYou Folders inherits the remaining icons from Papirus-Dark.

## Installation

### Automatic

Run the interactive installer:

```sh
curl -fsSL https://raw.githubusercontent.com/edwardzerov2/monoyou-folders/main/install.sh | bash
```

### Manual

Clone the repository:

```sh
git clone https://github.com/edwardzerov2/monoyou-folders.git
cd monoyou-folders
```

Install or update all themes:

```sh
bash setup.sh install
```

Uninstall all themes:

```sh
bash setup.sh uninstall
```

To manage specific themes, use:

```sh
bash setup.sh [action] [variant]
```

| Argument | Available values | Default |
|---|---|---|
| `action` | `install`, `uninstall` | — |
| `variant` | `Cold`, `Neutral`, `Warm`, `All` | `All` |

Themes are installed in `${XDG_DATA_HOME:-$HOME/.local/share}/icons`.

Select your preferred icon theme in your desktop environment settings.

## Uninstallation

From a local checkout, run:

```sh
bash setup.sh uninstall
```

Append a variant name to remove only that theme.

## Credits & License

Based on [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme).

Colors provided by [MonoYou Colors](https://github.com/edwardzerov2/monoyou-colors).

**Modification notice (2026-11-14):** Original Papirus folder SVGs recolored using the Cold, Neutral and Warm palettes.

Licensed under the [GNU GPL v3](LICENSE).
