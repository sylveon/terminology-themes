# Terminology Themes

[![Build Status](https://travis-ci.org/sylveon/terminology-themes.svg?branch=master)](https://travis-ci.org/sylveon/terminology-themes)

Color schemes for the best terminal emulator!

Previews are available [on my website](https://sylveon.dev/terminology-themes).

------------------------

The tab appearance is a WIP. If anyone with better knowledge of EDC than me wants to help, feel free to PR. Mostly, I would like to, if anyone can help:

- Remove all the useless `tab_bevel` structures and some other useless `tab_bg_*`, `tab_other_*` and `tab_shad_*` assets file.
- Add a little | separator between tabs.
- Fix a [little alignment glitch when switching tabs](http://i.imgur.com/Vok8agA.gif).

## Installation

> **Note**: A package might be available for your distro. Scroll down to the [packages section](#packages) to find it out.

First, you need to install the required components to build it:

- `edje_cc`
  - Ubuntu: `libedje-bin`
  - Fedora: `efl-devel`
  - Arch Linux: [efl](https://www.archlinux.org/packages/extra/x86_64/efl/)
  - Gentoo: [dev-libs/efl](https://packages.gentoo.org/packages/dev-libs/efl)
  - Consult your preferred search engine for other distributions

Then, building and installing is pretty straightforward:

```sh
make
sudo make install
# for a prefix other than /usr
make install PREFIX=/usr/local
# or, for a per-user install
make install PREFIX=~/.local
```

## Packages

 - Arch Linux: [terminology-themes-git](https://aur.archlinux.org/packages/terminology-themes-git/) on the AUR
 - Bodhi Linux: Install `terminology-themes-pack`. Individual themes can be installed by installing `terminology-themes-ThemeName`.
