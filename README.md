# Homebrew
To install packages from Brewfile, just run "brew bundle install"

# Putting files in the right place
```cd``` into the dotfiles directory and run the following command:<br>
``` stow --target $HOME <nameOfProgram> ```

Example:<br>
``` stow --target $HOME zsh ```

## Recommended
- Move the zshrc file into the right place first using stow.
- After that, when moving other files, just use ```stow <nameOfProgram>``` (Don't forget to source your new .zshrc file first)

Example (After stowing zsh with the command above):<br>
```stow yabai```

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

