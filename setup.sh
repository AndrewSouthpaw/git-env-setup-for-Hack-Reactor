#!/bin/zsh
# This script performs two tasks:
# 1. Add standard git aliases
# 2. Install git flow and git flow completion helpers.

###########################################################
# How to use
###########################################################
# 1. Download the file
# 2. Navigate to file
# 3. Change permissions on it:
#     chmod 700 git-env-setup.sh
# 4. Run the script:
#     ./git-env-setup.sh


# 1. Add standard git aliases
# ---------------------------
# We all love them. For some bizarre reason, they're not included in the dev
# environment at Hack Reactor. Run this script every morning to fix that
# problem.

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
git clone https://github.com/bobthecow/git-flow-completion.git
cat git-flow-completion/git-flow-completion.zsh >> ~/.zshrc
rm -rf git-flow-completion
cd ~
