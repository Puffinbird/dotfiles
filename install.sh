#!/bin/bash

# Installera Starship
curl -sS https://starship.rs/install.sh | sh -s -- -y

# Skapa ~/.config-katalog om den inte finns
mkdir -p ~/.config

# Kopiera starship.toml till ~/.config/ om den finns i arkivet
if [ -f starship.toml ]; then
    cp starship.toml ~/.config/starship.toml
fi

# Lägg till Starship-init i ~/.bashrc för Bash
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# Lägg till ett meddelande för att verifiera att .bashrc laddas
echo 'echo "Dotfiles loaded"' >> ~/.bashrc
