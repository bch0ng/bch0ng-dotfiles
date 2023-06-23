#!/bin/bash
echo "Symlinking config files"
ln -sv ~/bch0ng-dotfiles/.zshrc ~
echo "Symlinked .zshrc"
ln -sv ~/bch0ng-dotfiles/.tmux.conf ~
echo "Symlinked .tmux.conf"
ln -sv ~/bch0ng-dotfiles/.vimrc ~
echo "Symlinked .vimrc"
echo "Done symlinking config files"
