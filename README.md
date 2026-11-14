# MonoYou Icons

> [!WARNING]
> **WORK IN PROGRESS**
>
> MonoYou Icons is currently under active development. Folder icon designs and theme coverage may change before the first stable release.
>
> Some folder variants may still be missing.

Folder icon themes based on Papirus, recolored with the Neutral, Cold and Warm variants of MonoYou.

| Theme | Folder color |
| --- | --- |
| [MonoYou Folders Neutral](icons/MonoYou-Folders-Neutral/) | `#929292` |
| [MonoYou Folders Cold](icons/MonoYou-Folders-Cold/) | `#9298A3` |
| [MonoYou Folders Warm](icons/MonoYou-Folders-Warm/) | `#A29E99` |

## Installation

Install Papirus first. These themes provide folder icons and inherit the rest from Papirus-Dark.

From a Git checkout on Linux, run `./setup.sh install` to install all three
variants for your user. The script preserves the icon symlinks and writes to
`$XDG_DATA_HOME/icons` or `~/.local/share/icons/` by default. It updates each
theme's cache if `gtk-update-icon-cache` is available.

Run `./setup.sh uninstall` to remove the three themes.

On KDE Plasma, open **System Settings → Icons**, select a MonoYou Folders variant and apply it. If Dolphin still shows the previous icons, close and reopen it.

## Credits and license

**Modification notice (2026-11-14).** MonoYou Folders recolored the original Papirus folder SVGs for the Neutral, Cold and Warm palettes. See the [GPLv3 license](LICENSE).

The folder SVGs are adapted from [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) and distributed under the GNU General Public License version 3. Each theme includes the Papirus license and author credits. The colors come from [MonoYou Colors](https://github.com/edwardzerov2/monoyou-colors).
