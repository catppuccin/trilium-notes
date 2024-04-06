<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://github.com/zadam/trilium">Trilium Notes</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/trilium-notes/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/trilium-notes?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/trilium-notes/issues"><img src="https://img.shields.io/github/issues/catppuccin/trilium-notes?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/trilium-notes/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/trilium-notes?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="assets/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="assets/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="assets/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="assets/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="assets/mocha.webp"/>
</details>

## Usage

1. Copy the _css_ (**raw**) content of your favorite theme (or from the downloaded file if you used the download script)
2. Paste it into a new Trilium **code** note (type: CSS) named "catppuccin-theme"
3. Add a new attribute to the catppuccin-theme note `(Alt + A)`
    - Either copy & paste `#appTheme=catppuccin` to the node's attributes
    - Or use the UI with these settings
      - Type: Label
      - Name: appTheme
      - Value: catppuccin
      - inheritable: _not ticked_
4. Go to `Menu` > `Options`
5. Select it as your new theme

Further information and instructions can be found in the [official documentation](https://github.com/zadam/trilium/wiki/Themes).

### Change accent color (Optional)

The default **accent color** is _mauve_, if you want to change it, use the download script:

#### Linux
```
sh -c "$(curl -sS https://raw.githubusercontent.com/catppuccin/trilium-notes/main/change-accent.sh)"
```

#### Windows
```
(iwr https://raw.githubusercontent.com/catppuccin/trilium-notes/main/change-accent.ps1).Content | iex
```

## 💝 Thanks to

- [SedAlexa](https://github.com/SadAlexa)
- [NicKoehler](https://github.com/NicKoehler)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
