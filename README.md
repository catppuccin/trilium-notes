# trilium-theme-catppuccin

A theme for [Trilium Notes](https://github.com/zadam/trilium), made with [Catppuccin palette](https://github.com/catppuccin/catppuccin).

## Screenshots

### Main Window

![](https://raw.githubusercontent.com/SadAlexa/trilium-theme-catppuccin/main/screenshot.png "More info below!")

## Theme Installation

### Please follow the official instructions [here](https://github.com/zadam/trilium/wiki/Themes).

#### In a nutshell:

Install the theme by following these steps:

- copy the (**raw**) content of ![catppuccin-theme.css](https://raw.githubusercontent.com/SadAlexa/trilium-theme-catppuccin/main/catppuccin-theme.css)
- paste it into a new trilium **code** note (type: CSS) named "catppuccin-theme"
- add a new attribute to the catppuccin-theme note `(Alt + A)`
  - either copy & paste `#appTheme=catppuccin` to the node's attributes
  - or use the UI with these settings
    - Type: Label
    - Name: appTheme
    - Value: catppuccin
    - inheritable: _not ticked_
- go to Menu > Options
- select it as your new theme

## Additional icons

To get the full experience you need to install some additional icons.

- The custom icons (.svg) have to be imported into the theme note (right click on theme note, select _Import into note_)
- the _customResourceProvider_ attribute needs to be added to every icon file
- the respective attribute _value_ should be _icons/Icon-File-Name.svg_
