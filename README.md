## `NeoVim config` :alembic:

A little repo to store my `neovim` config for use across devices. Should be nicely bootstrapped.


### Install
To install clone this repo into a location and run something like the following.

#### Prep
```sh
mkdir -p ~/.shared_config
cd ~/.shared_config
git clone https://github.com/ewan-wakeman/nvim_config.git
cd ~/.config
ln -s ~/.shared_config/nvim_config/nvim
```

#### Install Packages
This config uses [`packer`]('https://github.com/wbthomason/packer') to install and manage packages.

To run the installer for the first time run:
```sh
nvim +PackerInstall
```

This may throw some errors the first time but after a run or two it'll pick up all the packages it needs and quieten down.
