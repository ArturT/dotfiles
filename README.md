Base on yundt's dotfiles idea.

# Setup

## Copy repo to your ~ dir

    $ git clone git@github.com:ArturT/dotfiles.git ~/.dotfiles

## Links

    $ ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
    $ ln -s ~/.dotfiles/.oh-my-zsh ~/.oh-my-zsh
    $ ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
    $ touch ~/.tmux.conf.local

In ~/.zshrc add line:

    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

    PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

    source ~/.dotfiles/.zshrc

Install:

    $ brew install reattach-to-user-namespace
