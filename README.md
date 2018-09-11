Base on yundt's dotfiles idea.

# Setup

Copy repo to your ~ dir

    $ git clone git@github.com:ArturT/dotfiles.git ~/.dotfiles
    $ git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

Links

    $ ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
    $ ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
    $ touch ~/.tmux.conf.local

In ~/.zshrc add line:

    source ~/.dotfiles/.zshrc

Install:

    $ brew install reattach-to-user-namespace

Change shell to zsh:

    $ chsh -s /bin/zsh

# FAQ

In case of error:

```
cddyld: Library not loaded: /usr/local/lib/libgdbm.4.dylib
  Referenced from: /usr/local/bin/zsh
  Reason: image not found
```

Please do:

    $ brew upgrade zsh

