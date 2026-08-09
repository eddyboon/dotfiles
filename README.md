# Homebrew
To install packages from Brewfile, just run "brew bundle install"

# Sketchybar
## Icons
- Font pack is in $HOME/Library/Fonts/sketchybar-app-font.ttf
- Open font book to see the fonts
- Run this command to update the font icons

- Update the version that you want to download

- Run Command: 
```
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v2.0.19/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf
```

# Using stow to manage dotfiles automatically
## Prerequisites
- Make sure you have stow installed.

## Automating the process
Clone this repo somewhere into your computer.
After cloning, just run "stow [*program that you want*]"
It will automatically create the files in the directory that it is supposed to go to.
>For Eg. lazyvim/.config/nvim/
> when you run stow lazyvim, it will populate .config file and create the nvim subdirectory. It will move all the files in the following subdirectory as well
