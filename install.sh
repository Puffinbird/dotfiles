#!/bin/bash

# Installera Starship
curl -sS https://starship.rs/install.sh | sh -s -- -y

# Skapa ~/.config-katalog om den inte finns
mkdir -p ~/.config

echo 'if [ -f ~/.bashrc ]; then . ~/.bashrc; fi' >> ~/.profile

# Kopiera starship.toml till ~/.config/ om den finns i arkivet
if [ -f starship.toml ]; then
    cp starship.toml ~/.config/starship.toml
fi

# Kopiera .bashrc till användarens hemkatalog om den finns i arkivet
if [ -f .bashrc ]; then
    cp .bashrc ~/.bashrc
fi

# Lägg till ett meddelande för att verifiera att .bashrc laddas
echo 'echo "Dotfiles loaded"' >> ~/.bashrc
