brew install python
brew install python3
pip2 install neovim --upgrade
pip3 install neovim --upgrade
brew install neovim
brew install fzf

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

brew install bat
brew install diff-so-fancy
brew install git
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
