# Terminology Themes

[![Build Status](https://travis-ci.org/sylveon/terminology-themes.svg?branch=master)](https://travis-ci.org/sylveon/terminology-themes)

Color schemes for the best terminal emulator!

Previews are available [on my website](https://charlesmilette.net/terminology-themes).

------------------------

The tab appearance is a WIP. If anyone with better knowledge of EDC than me wants to help, feel free to PR. Mostly, I would like to, if anyone can help:

- Remove all the useless `tab_bevel` structures and some other useless `tab_bg_*`, `tab_other_*` and `tab_shad_*` assets file.
- Add a little | separator between tabs.
- Fix a [little alignment glitch when switching tabs](http://i.imgur.com/Vok8agA.gif).

## Installation

**Note**: A package might be available for your distro. Scroll down to the [packages section](#packages) to find it out.

First, you need to install the required components to build it:

- `edje_cc`
  - Ubuntu: `libefl-bin` from the [niko2040/e19](https://launchpad.net/~niko2040/+archive/ubuntu/e19) PPA
  - Fedora: `efl-devel`
  - Arch Linux: [efl](https://www.archlinux.org/packages/extra/x86_64/efl/)
  - Gentoo: [dev-libs/efl](https://packages.gentoo.org/packages/dev-libs/efl)
  - Other distros: IDK Google it

Then, building and installing is pretty straightforward:

```sh
make
sudo make install
```

## Packages

 - Arch Linux: [terminology-themes-git](https://aur.archlinux.org/packages/terminology-themes-git/) on the AUR
 - Gentoo: [x11-themes/terminology-themes](https://packages.gentoo.org/packages/x11-themes/terminology-themes)
 - Bodhi Linux: Install `terminology-themes-pack`. Individual themes can be installed by installing `terminology-themes-ThemeName`.