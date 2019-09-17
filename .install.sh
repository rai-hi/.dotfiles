brew install python
brew install python3
pip2 install neovim --upgrade
pip3 install neovim --upgrade
brew install neovim
brew install fzf
brew install tmux

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

brew install bat
brew install diff-so-fancy
brew install git

# Set diff tool
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
dotfiles submodule update --init --recursive

# Add vim plugin loader
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

