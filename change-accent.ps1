# stolen from https://blog.carolinechiari.com/a-better-powershell-console-menu
function Get-MenuSelection {
    [CmdletBinding()]
    [OutputType([string])]
    param
    (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [String[]]$MenuItems,
        [Parameter(Mandatory = $true)]
        [String]$MenuPrompt
    )
    # store initial cursor position
    $cursorPosition = $host.UI.RawUI.CursorPosition
    $pos = 0 # current item selection

    #==============
    # 1. Draw menu
    #==============
    function Write-Menu {
        param (
            [int]$selectedItemIndex
        )
        # reset the cursor position
        $Host.UI.RawUI.CursorPosition = $cursorPosition
        # Padding the menu prompt to center it
        $prompt = $MenuPrompt
        $maxLineLength = ($MenuItems | Measure-Object -Property Length -Maximum).Maximum + 4
        while ($prompt.Length -lt $maxLineLength + 4) {
            $prompt = " $prompt "
        }
        Write-Host $prompt -ForegroundColor Magenta
        # Write the menu lines
        for ($i = 0; $i -lt $MenuItems.Count; $i++) {
            $line = "    $($MenuItems[$i])" + (" " * ($maxLineLength - $MenuItems[$i].Length))
            if ($selectedItemIndex -eq $i) {
                Write-Host $line -ForegroundColor Black -BackgroundColor Magenta
            }
            else {
                Write-Host $line
            }
        }
    }

    Write-Menu -selectedItemIndex $pos
    $key = $null
    while ($key -ne 13) {
        #============================
        # 2. Read the keyboard input
        #============================
        $press = $host.ui.rawui.readkey("NoEcho,IncludeKeyDown")
        $key = $press.virtualkeycode
        if ($key -eq 38) {
            $pos--
        }
        if ($key -eq 40) {
            $pos++
        }
        #handle out of bound selection cases
        if ($pos -lt 0) { $pos = 0 }
        if ($pos -eq $MenuItems.count) { $pos = $MenuItems.count - 1 }

        #==============
        # 1. Draw menu
        #==============
        Write-Menu -selectedItemIndex $pos
    }

    return $MenuItems[$pos]
}

function Print-Cat {

    Write-Host " ⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣶⣶⣿⣿⣿⣿⣷⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀" -ForegroundColor Red
    Write-Host "⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀" -ForegroundColor Red
    Write-Host "⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⢿⣿⣿⣷⣄⠀⠀⠀⠀" -ForegroundColor DarkYellow
    Write-Host "⠀⠀⢠⣾⣿⣿⠀⠀⠀⠉⠛⢿⣿⠿⠿⠿⠿⠿⢿⠟⠁⠀⠀⠀⢿⣿⣿⣿⣷⡀⠀⠀" -ForegroundColor DarkYellow
    Write-Host "⠀⢠⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⡄⠀" -ForegroundColor DarkYellow
    Write-Host "⢀⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣷⠀" -ForegroundColor Yellow
    Write-Host "⢸⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀" -ForegroundColor Yellow -NoNewline
    Write-Host "⣠⣶⠶⣶⡄⠀⠀⢠⠾⠿⠶⡄⠀" -NoNewline
    Write-Host "⠈⢿⣿⣿⣿⣿⡇" -ForegroundColor Yellow
    Write-Host "⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀" -ForegroundColor Yellow -NoNewline
    Write-Host "⠋⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀"  -NoNewline
    Write-Host "⠘⣿⣿⣿⣿⣷" -ForegroundColor Yellow
    Write-Host "⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀" -ForegroundColor Green -NoNewline
    Write-Host "⠘⠻⠟⠀⠀⠀⠀⠀⠀⠀" -NoNewline
    Write-Host "⣿⣿⣿⣿⡿" -ForegroundColor Green 
    Write-Host "⢹⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀" -ForegroundColor Green -NoNewline
    Write-Host "⠐⠦⠴⠓⠚" -NoNewline
    Write-Host "⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⡇" -ForegroundColor Green
    Write-Host "⠈⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⡿⠀" -ForegroundColor Blue
    Write-Host "⠀⠘⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⠃⠀" -ForegroundColor Blue
    Write-Host "⠀⠀⠘⢿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀" -ForegroundColor Blue -NoNewline
    Write-Host "⢠⣀⡀⣀⡀" -ForegroundColor Red -NoNewline
    Write-Host "⠀⢰⣿⣿⣿⣿⣿⡿⠁⠀⠀" -ForegroundColor Blue
    Write-Host "⠀⠀⠀⠀⠻⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀" -ForegroundColor DarkMagenta -NoNewline
    Write-Host "⠸⣿⠟⠻⠇" -ForegroundColor Red -NoNewline
    Write-Host "⠀⠀⣿⣿⣿⡿⠋⠀⠀⠀⠀" -ForegroundColor DarkMagenta
    Write-Host "⠀⠀⠀⠀⠀⠀⠙⠿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠟⠋⠀⠀⠀⠀⠀⠀" -ForegroundColor DarkMagenta
    Write-Host 
    Write-Host "Welcome to " -ForegroundColor DarkMagenta -NoNewline 
    Write-Host "Catppuccin " -ForegroundColor Red -NoNewline 
    Write-Host "for " -ForegroundColor DarkMagenta -NoNewline 
    Write-Host "Trilium" -ForegroundColor Blue -NoNewline 
    Write-Host "!" -ForegroundColor DarkMagenta
    Write-Host

}

$ProgressPreference = 'SilentlyContinue'
$palettes = "latte", "frappe", "macchiato", "mocha"
$accents = "rosewater", "flamingo", "pink", "mauve", "red", "maroon", "peach", "yellow", "green", "teal", "sky", "sapphire", "blue", "lavender"

Clear-Host
Print-Cat
$palette = Get-MenuSelection $palettes "Select the palette you want" 
Clear-Host
$accent = Get-MenuSelection $accents "Select the accent you want" 
Clear-Host

$filename = "catppuccin-$palette-theme.css"
$url = "https://raw.githubusercontent.com/SadAlexa/trilium-theme-catppuccin/main/${filename}"
Invoke-WebRequest -Uri $url -OutFile $filename

$content = Get-Content $filename -Raw
[regex]$pattern = "var\(\-\-mauve\)"
Set-Content -Path $filename -Value $pattern.Replace($content, "var(--$accent)", 1)

Write-Host "Done! You can copy the content of $filename from your current directory" -ForegroundColor Green
