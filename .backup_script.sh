# use this script to setup the 'config' command. This it works by creating a git bare repository
# more info can be found at : https://www.atlassian.com/git/tutorials/dotfiles

git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
