# MonoYou Icons

> [!WARNING]
> **WORK IN PROGRESS**
>
> MonoYou Icons is currently under active development. Folder icon designs and theme coverage may change before the first stable release.
>
> Some folder variants may still be missing.

## Preview

Folder icon themes based on Papirus, recolored with the Neutral, Cold and Warm variants of MonoYou.

| Theme | Folder | Home | Desktop | Documents | Downloads | Music | Pictures | Public | Videos |
| --- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Cold** | ![](icons/MonoYou-Folders-Cold/48x48/places/folder-grey.svg) | ![](icons/MonoYou-Folders-Cold/48x48/places/folder-grey-home.svg) | ![](icons/MonoYou-Folders-Cold/48x48/places/folder-grey-desktop.svg) | ![](icons/MonoYou-Folders-Cold/48x48/places/folder-grey-documents.svg) | ![](icons/MonoYou-Folders-Cold/48x48/places/folder-grey-download.svg) | ![](icons/MonoYou-Folders-Cold/48x48/places/folder-grey-music.svg) | ![](icons/MonoYou-Folders-Cold/48x48/places/folder-grey-pictures.svg) | ![](icons/MonoYou-Folders-Cold/48x48/places/folder-grey-public.svg) | ![](icons/MonoYou-Folders-Cold/48x48/places/folder-grey-videos.svg) |
| **Neutral** | ![](icons/MonoYou-Folders-Neutral/48x48/places/folder-grey.svg) | ![](icons/MonoYou-Folders-Neutral/48x48/places/folder-grey-home.svg) | ![](icons/MonoYou-Folders-Neutral/48x48/places/folder-grey-desktop.svg) | ![](icons/MonoYou-Folders-Neutral/48x48/places/folder-grey-documents.svg) | ![](icons/MonoYou-Folders-Neutral/48x48/places/folder-grey-download.svg) | ![](icons/MonoYou-Folders-Neutral/48x48/places/folder-grey-music.svg) | ![](icons/MonoYou-Folders-Neutral/48x48/places/folder-grey-pictures.svg) | ![](icons/MonoYou-Folders-Neutral/48x48/places/folder-grey-public.svg) | ![](icons/MonoYou-Folders-Neutral/48x48/places/folder-grey-videos.svg) |
| **Warm** | ![](icons/MonoYou-Folders-Warm/48x48/places/folder-grey.svg) | ![](icons/MonoYou-Folders-Warm/48x48/places/folder-grey-home.svg) | ![](icons/MonoYou-Folders-Warm/48x48/places/folder-grey-desktop.svg) | ![](icons/MonoYou-Folders-Warm/48x48/places/folder-grey-documents.svg) | ![](icons/MonoYou-Folders-Warm/48x48/places/folder-grey-download.svg) | ![](icons/MonoYou-Folders-Warm/48x48/places/folder-grey-music.svg) | ![](icons/MonoYou-Folders-Warm/48x48/places/folder-grey-pictures.svg) | ![](icons/MonoYou-Folders-Warm/48x48/places/folder-grey-public.svg) | ![](icons/MonoYou-Folders-Warm/48x48/places/folder-grey-videos.svg) |

## Installation

### Requirements

Install Papirus before proceeding. MonoYou Folders provides custom folder icons and inherits the remaining icons from Papirus-Dark.

### Automatic Installation

Install all three variants with a single command:

```bash
git clone --depth=1 https://github.com/edwardzerov2/monoyou-folders.git /tmp/monoyou-folders && bash /tmp/monoyou-folders/setup.sh install && rm -rf /tmp/monoyou-folders
```

### Manual Installation

Clone the repository:

```bash
git clone https://github.com/edwardzerov2/monoyou-folders.git
cd monoyou-folders
```

Install the themes:

```bash
./setup.sh install
```

The installation script preserves symbolic links, installs the themes to `$XDG_DATA_HOME/icons` (default: `~/.local/share/icons`), and updates the icon caches when `gtk-update-icon-cache` is available.

### Uninstallation

From a local checkout, run:

```bash
./setup.sh uninstall
```

### Applying the Theme

On KDE Plasma, open **System Settings → Icons**, select your preferred MonoYou Folders variant and apply it.

If Dolphin still displays the previous icons, restart it.

## Credits and license

**Modification notice (2026-11-14).** MonoYou Folders recolored the original Papirus folder SVGs for the Neutral, Cold and Warm palettes. See the [GPLv3 license](LICENSE).

The folder SVGs are adapted from [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) and distributed under the GNU General Public License version 3. Each theme includes the Papirus license and author credits. The colors come from [MonoYou Colors](https://github.com/edwardzerov2/monoyou-colors).
