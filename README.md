git-env-setup-for-Hack-Reactor
==============================

Dotfile for setting up git environment: aliases and git flow on the Hack Reactor computers. (That means using `zsh`.)

# How to Use

1. Download the file
2. Navigate to file in Terminal
3. Change permissions on it: `chmod 700 setup.sh`
4. Run the script: `./setup.sh`

# What gets installed

### Aliases
    
co = checkout
ci = commit
st = status
br = branch
mr = merge
hist = log --pretty=format:'%C(yellow)%h%Creset %Cgreen%ad%Creset | %s%C(magenta)%d%Creset [%Cblue%an%Creset]' --graph --date=short --decorate
type = cat-file -t
dump = cat-file -p
lol = log --graph --decorate --pretty=oneline --abbrev-commit --all
pushall = push --recurse-submodules=on-demand

### Git Flow

First, read [this tutorial](http://nvie.com/posts/a-successful-git-branching-model/). No, seriously, go read it. It will change your git world.

...

Welcome back! So, really useful framework. The kind people of the open-source world created [a way](https://github.com/nvie/gitflow) to automate many of the actions. This package gets installed.

Then, the dotfile installs the [tab completion for commands used in git flow](https://github.com/bobthecow/git-flow-completion).