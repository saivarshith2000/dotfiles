# dotfiles
Dotfiles for my linux desktop across various machines

### I USE ARCH BTW
#### Setup: ArchLinux + i3-Gaps (fallback on XFCE)

The dotfile management system is described here: https://www.atlassian.com/git/tutorials/dotfiles
The script used for this process can be found at backup_script.sh

#### Basic Idea:
This process initialiases a bare git repository in the home directory with refs tracked in a .cfg folder.
An alias 'config' is created for this repo. Therefore, just treat the home directory as a git repo and work normally. If any config 
is changed, it will be reflected in 'config status', then add, commit and push it. That's it,

### Configs Tracked
1. neovim (.nvim)
2. backup_script.sh
3. i3 (with status bar)
4. Alacritty
5. zshrc
