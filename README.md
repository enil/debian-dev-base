# debian-dev-base

A [Docker] image with my preferred development setup for quick hax and experimentation, for instance to explore or
apply a quick fix to another container using `--volumes-from` or `--link` with `docker run`.
The image is based on [Debian 8.0 "Jessie"].

The image has the basics for a comfortable development environment, and can be used as a base (thus the name) for more
specialized images.
Unlike the bare Debian image it includes man pages for quick access.

## Overview

To launch the container, just run `docker run -ti enil/docker-dev-base:latest`.

* The additional packages included are `zsh`, `vim`, `git`, `tmux`, `tree`, `sudo`, `man-db` and `manpages`.
* The container launches into a `zsh` shell by default.
* The container launches as the user `docker` with membership in the `sudo` group.
* Dotfiles for zsh, vim and tmux are downloaded and installed from the repositories [enil-zsh-dotfiles],
[enil-vim-dotfiles] and [enil-tmux-dotfiles] respectively.
* The script `update.sh` updates the environment variable `REFRESHED_AT` in the `Dockerfile`.
* The script `rebuild.sh` updates `REFRESHED_AT` and rebuilds the image.

[Docker]:              https://docker.com/
[Debian 8.0 "Jessie"]: https://registry.hub.docker.com/_/debian/
[enil-zsh-dotfiles]:   https://github.com/enil/enil-zsh-dotfiles.git
[enil-vim-dotfiles]:   https://github.com/enil/enil-vim-dotfiles.git
[enil-tmux-dotfiles]:  https://github.com/enil/enil-tmux-dotfiles.git

