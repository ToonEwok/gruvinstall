sleep 15

#arch0724 backup list
#put -R /home/bailey/Pictures/icons /home/sark/backup/arch0724/visual
#put -R /home/bailey/Pictures/Wallpapers /home/sark/backup/arch0724/visual
#put -R /home/bailey/Pictures/customizations /home/sark/backup/arch0724/visual
#put -R /home/bailey/.apps/shellscripts /home/sark/backup/arch0724/shell
#put /home/bailey/.zshrc /home/sark/backup/arch0724/shell
#put /home/bailey/Documents/Keepass/Passwords.kdbx /home/sark/backup/keepass
#put -R /home/bailey/Documents/shfiles	/home/sark/backup/arch0724/documents
#put -R /home/bailey/Documents/stls/* /hdd/projects/3d
#put /home/bailey/.config/Ryujinx/bis/user/save/0000000000000001/0/system /hdd/ROMs/switch/save
#put -R /home/bailey/.config/i3 /home/sark/backup/arch0724/i3configs
#put -R /home/bailey/.config/polybar /home/sark/backup/arch0724/i3configs
#put /home/bailey/.Xresources /home/sark/backup/arch0724/i3configs
#put -R /home/bailey/.config/nvim /home/sark/backup/arch0724/shell/configs
#put -R /home/bailey/.config/rofi /home/sark/backup/arch0724/i3configs/rofi/.config
#put -R /home/bailey/.local/share/rofi /home/sark/backup/arch0724/i3configs/
#put -R /home/bailey/.ssh/* /home/sark/backup/arch0724/ssh

sftp sark@192.168.0.41<<EOF
put /home/bailey/.zshrc /home/sark/backup/os/arch0924/dotfiles/home
put /home/bailey/.zshenv /home/sark/back/os/arch0924/dotfiles/home
put -R /home/bailey/.oh-my-zsh /home/sark/backup/os/arch0924/dotfiles/home
put /home/bailey/.xinitrc /home/sark/backup/os/arch0924/dotfiles/home
put /home/bailey/.Xresources /home/sark/backup/os/arch0924/dotfiles/home
put -R /home/bailey/.config/alacritty /home/sark/backup/os/arch0924/dotfiles/dotconfig
put -R /home/bailey/.config/i3 /home/sark/backup/os/arch0924/dotfiles/dotconfig
put -R /home/bailey/.config/nvim /home/sark/backup/os/arch0924/dotfiles/dotconfig
put -R /home/bailey/.config/picom /home/sark/backup/os/arch0924/dotfiles/dotconfig
put -R /home/bailey/.config/polybar /home/sark/backup/os/arch0924/dotfiles/dotconfig
put -R /home/bailey/.config/rofi /home/sark/backup/os/arch0924/dotfiles/dotconfig
put -R /home/bailey/.config/cava /home/sark/backup/os/arch0924/dotfiles/dotconfig
put -R /home/bailey/.config/vesktop/themes /home/sark/backup/os/arch0924/dotfiles/dotconfig
put -R /home/bailey/Documents/keepass /home/sark/backup/files
put -R /home/bailey/Documents/shfiles /home/sark/backup/files
put -R /home/bailey/.apps/shellscripts /home/sark/backup/files
put -R /home/bailey/Pictures/GruvIcons /home/sark/backup/files/icons
put -R /home/bailey/.local/share/applications /home/sark/backup/files/desktopfiles
put -R /usr/share/applications /home/sark/backup/files/desktopfiles
put -R /home/bailey/.config/dunst /home/sark/backup/os/arch0924/dotfiles/dotconfig
put -R /home/bailey/.config/hypr /home/sark/backup/os/arch0924/dotfiles/dotconfig
put -R /home/bailey/.config/waybar /home/sark/backup/os/arch0924/dotfiles/dotconfig
put -R /home/bailey/Work/* /home/sark/work
exit
EOF
