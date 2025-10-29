if test -d ~/.linuxbrew/bin
    set -gx PATH ~/.linuxbrew/bin $PATH
else if test -d /home/linuxbrew/.linuxbrew/bin
    set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH
end

# Enviroment Variables
set -gx EDITOR "nvim"
set -gx VISUAL "nvim"
set -U fish_user_paths /home/ruby/.local/bin $fish_user_paths
set -x HYFETCH_DONT_WARN_RUST 1
set -x GTK_USE_PORTAL 1
# set -l time $(printf "%T(%x | %X)")

# use this for random pride flag
function RandomFlags
    set -l RANDOM (date +%s)
    set -l flags transgender transfeminine lesbian sapphic finsexual femboy gendernonconforming2 plural # Add femme when I have the ability
    set -l use_flag $flags[(math $RANDOM % (count $flags) + 1)]
    hyfetch -b fastfetch -p "$use_flag"
    # echo "$use_flag"
end

# Binds Function
function Binds
    cd ~/.config/niri; or return
    awk '
        /^\s*binds\s*{/ { in_binds=1 }
        in_binds {
            if ($0 ~ /^\s*\/\//) next;
            print
            if ($0 ~ /^\s*}/) { in_binds=0; exit }
        }
    ' config.kdl | head -n 200
end

# Alias
function Aliases
    set -a DOCUMENTS "/media/BackupDrive/Documents" # Added this for when the code gets expanded and more complex
    alias neobim=nvim
    alias dir=ls 
    alias goto=cd
    # alias nf=neofetch # I do not have neofetch installed
    alias ff=fastfetch
    alias hf=hyfetch 
    alias aagl="flatpak run moe.launcher.an-anime-game-launcher"
    alias restart=reboot
    alias fishconf="cd ~/.config/fish & nvim config.fish"
    alias nvimconf="cd ~/.config/nvim & nvim"
    alias zshconf="cd ~/.config/zsh & nvim .zshrc"
    alias vencord='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
    alias frun=fish
    alias brun=bash
    alias lo-discordrpc=LibreOffice-Discord-RPC
    alias progingstuff="cd /media/BackupDrive/ProgrammingStuff/CodeRepositories"
    alias siren-blood="cd /media/BackupDrive/Documents/Books/Siren\ \&\ Blood/"
    alias obsidian-notes="cd /media/BackupDrive/Documents/Obsidian/"
    alias eza="eza -F"
    alias binds=Binds
end

starship init fish | source

# Function Calls
RandomFlags
Aliases
