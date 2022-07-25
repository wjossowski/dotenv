# Install homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install zsh and plugins
brew install zsh nvm git neofetch fzf
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Add Following stuff to ~/.bash_profile:
# export NVM_DIR="$HOME/.nvm"
#    [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
#    [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# Install additional software
brew cask install iterm2 visual-studio-code slate clipy 1password spotify karabiner-elements

# QMK Keyboard Setup
brew install avr-gcc qmk/qmk/qmk

# Fetch Submodules
git submodule update

# Setup Keyboard firmware
qmk setup wjossowski/qmk_firmware ./qmk
qmk config user.keymap=wjossowski
qmk config user.keyboard=splitkb/kyria/rev2
