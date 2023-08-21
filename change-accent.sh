#!/bin/bash

PS3="Select the number of the palette you want: "

select palette in latte frappe macchiato mocha
do 
    if [ -z "${palette}" ]; then
        echo "invalid option $REPLY"
    else
        break
    fi
done

PS3="Select the number of the accent you want: "

select accent in rosewater flamingo pink mauve red maroon peach yellow green teal sky sapphire blue lavender
do 
    if [ -z "${accent}" ]; then
        echo "invalid option $REPLY"
    else
        break
    fi
done

filename="catppuccin-${palette}-theme.css"

curl -O "https://raw.githubusercontent.com/SadAlexa/trilium-theme-catppuccin/main/${filename}"


sed -i "0,/var(--mauve)/s//var(--${accent})/" ${filename}

echo "Done! You can copy content of ${filename} from your current directory"
