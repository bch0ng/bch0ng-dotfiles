# Brew checkup
brew update
brew upgrade

# Workflow
brew install tmux
brew install vim
brew install zsh

# Tools/Utilities
# JavaScript tools
brew install node
brew install npm
brew install yarn

# Containerization
brew install docker

# Etc.
brew install openssl

# ZSH setup
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"&& git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
