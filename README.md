Base on yundt's dotfiles idea.

# Setup

## Copy repo to your ~ dir

	$ git clone git@github.com:ArturT/dotfiles.git ~/.dotfiles

## Links

	ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
	ln -s ~/.dotfiles/.oh-my-zsh ~/.oh-my-zsh

In ~/.zshrc add line:

	source ~/.dotfiles/.zshrc
