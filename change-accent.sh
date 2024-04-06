#!/bin/bash

red="\033[38;2;243;139;168m"
peach="\033[38;2;250;179;135m"
yellow="\033[38;2;249;226;175m"
green="\033[38;2;166;227;161m"
blue="\033[38;2;137;180;250m"
mauve="\033[38;2;203;166;247m"
text="\033[38;2;205;214;244m"

bold="\033[1m"
reset="\033[0m"

invalid_option() {
    echo -e "\n${red}invalid option ${bold}${REPLY}${reset}"
}

echo -e "${red} ⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣶⣶⣿⣿⣿⣿⣷⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo -e "${red}⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀"
echo -e "${peach}⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⢿⣿⣿⣷⣄⠀⠀⠀⠀"
echo -e "${peach}⠀⠀⢠⣾⣿⣿⠀⠀⠀⠉⠛⢿⣿⠿⠿⠿⠿⠿⢿⠟⠁⠀⠀⠀⢿⣿⣿⣿⣷⡀⠀⠀"
echo -e "${peach}⠀⢠⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⡄⠀"
echo -e "${yellow}⢀⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣷⠀"
echo -e "${yellow}⢸⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀${text}⣠⣶⠶⣶⡄⠀⠀⢠⠾⠿⠶⡄⠀${yellow}⠈⢿⣿⣿⣿⣿⡇"
echo -e "${yellow}⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀${text}⠋⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀${yellow}⠘⣿⣿⣿⣿⣷"
echo -e "${green}⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${text}⠘⠻⠟⠀⠀⠀⠀⠀⠀⠀${green}⣿⣿⣿⣿⡿"
echo -e "${green}⢹⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${text}⠐⠦⠴⠓⠚⠀⠀⠀⠀⠀${green}⢠⣿⣿⣿⣿⡇"
echo -e "${blue}⠈⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⡿⠀"
echo -e "${blue}⠀⠘⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⠃⠀"
echo -e "${blue}⠀⠀⠘⢿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀${red}⢠⣀⡀⣀⡀⠀${blue}⢰⣿⣿⣿⣿⣿⡿⠁⠀⠀"
echo -e "${mauve}⠀⠀⠀⠀⠻⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀${red}⠸⣿⠟⠻⠇⠀⠀${mauve}⣿⣿⣿⡿⠋⠀⠀⠀⠀"
echo -e "${mauve}⠀⠀⠀⠀⠀⠀⠙⠿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠟⠋⠀⠀⠀⠀⠀⠀${text}"
echo
echo -e "${mauve}Welcome to ${red}Catppuccin ${mauve}for ${blue}Trilium${mauve}!${reset}"
echo


PS3="
Select the number of the palette you want: "

select palette in latte frappe macchiato mocha
do 
    if [ -z "${palette}" ]; then
        invalid_option
    else
        break
    fi
done

echo ""

PS3="
Select the number of the accent you want: "

select accent in rosewater flamingo pink mauve red maroon peach yellow green teal sky sapphire blue lavender
do 
    if [ -z "${accent}" ]; then
        invalid_option
    else
        break
    fi
done

filename="catppuccin-${palette}-theme.css"

curl -O -sS "https://raw.githubusercontent.com/catppuccin/trilium-notes/main/${filename}"


sed -i "0,/var(--mauve)/s//var(--${accent})/" ${filename}

echo -e "\n${green}Done! You can copy content of ${bold}${filename}${reset}${green} from your current directory"
