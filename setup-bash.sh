#!/bin/bash
# 1. Add standard git aliases
# ---------------------------

git config --global alias.co "checkout"
git config --global alias.ci "commit"
git config --global alias.st "status"
git config --global alias.br "branch"
git config --global alias.mr "merge"
git config --global alias.hist "log --pretty=format: '%C(yellow)%h%Creset %Cgreen%ad%Creset | %s%C(magenta)%d%Creset [%Cblue%an%Creset]' --graph --date=short --decorate"
git config --global alias.type "cat-file -t"
git config --global alias.dump "cat-file -p"
git config --global alias.lol "log --graph --decorate --pretty=oneline --abbrev-commit --all"



# 2. Install git flow and git flow completion
# -------------------------------------------
# There's a helper script for following the git-flow model
# (http://nvie.com/posts/a-successful-git-branching-model/).
# This installs that script as well as completion commands for it.
cd ~/Desktop
brew install git-flow
git clone https://github.com/bobthecow/git-flow-completion.git
cat git-flow-completion/git-flow-completion.zsh >> ~/.zshrc
rm -rf git-flow-completion
cd ~
