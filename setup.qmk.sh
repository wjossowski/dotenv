#!/bin/bash

brew install avr-gcc@8 osx-cross/arm/arm-none-eabi-gcc@8

# avr-gcc
echo 'export PATH="/usr/local/Cellar/avr-gcc@8/8.5.0/bin:$PATH"' >> ~/.zshrc
echo 'export LDFLAGS="-L/usr/local/Cellar/avr-gcc@8/8.5.0/lib"' >> ~/.zshrc

# eabi
echo 'export PATH="/usr/local/opt/arm-none-eabi-gcc@8/bin:$PATH"' >> ~/.zshrc
echo 'export LDFLAGS="-L/usr/local/opt/arm-none-eabi-gcc@8/lib"' >> ~/.zshrc

brew install qmk/qmk/qmk

# Setup Keyboard firmware
qmk config set user.qmk_home=~/.qmk
qmk config set user.keymap=wjossowski
qmk config set user.keyboard=splitkb/kyria/rev2
qmk setup 