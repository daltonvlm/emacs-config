# emacs-config

This repository contains a personal Emacs configuration.

The main configuration lives in `./.emacs.d/` and includes:

- `early-init.el`: early startup settings for Emacs.
- `init.el`: main entry point that loads modules, configures `package.el`, and bootstraps `use-package`.
- `lisp/`: modular configuration files organized into `core/`, `packages/`, `themes/`, and `langs/`.

## Overview

The configuration is modular and currently experimental. It aims to keep package management and Emacs setup easy to maintain, using `use-package` to install and configure packages automatically.

## Structure

- `.emacs.d/early-init.el` — settings applied before normal Emacs startup, such as disabling the menu bar, tool bar, and scroll bar.
- `.emacs.d/init.el` — initializes `package.el`, adds the MELPA archive, installs `use-package` if needed, and loads the `lisp/` modules.
- `.emacs.d/lisp/core/` — core Emacs setup files.
- `.emacs.d/lisp/packages/` — package configuration and dependencies.
- `.emacs.d/lisp/themes/` — theme and appearance settings.
- `.emacs.d/lisp/langs/` — language-specific support.

## Usage

Clone the repository and link or copy `.emacs.d/` into your home directory:

```sh
git clone https://<repo-url> emacs-config
cp -r emacs-config/.emacs.d ~/.emacs.d
```

Then open Emacs to load the configuration and install the defined packages.

## Notes

- `use-package` is installed automatically if it is not already present.
- This setup assumes access to the MELPA package archive.
- Additional user customizations can be placed in `~/.emacs.d/custom.el` if that file exists.
