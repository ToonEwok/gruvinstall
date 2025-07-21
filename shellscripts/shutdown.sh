#until key auth is set backup this wont work as intended, plus need to consider what is being backed up on the new cleaner system


#sftp sark@192.168.0.41<<EOF
#put /home/bailey/.zshrc /home/sark/backup/os/arch0924/dotfiles/home
#put /home/bailey/.zshenv /home/sark/back/os/arch0924/dotfiles/home
#put -R /home/bailey/.oh-my-zsh /home/sark/backup/os/arch0924/dotfiles/home
#put /home/bailey/.xinitrc /home/sark/backup/os/arch0924/dotfiles/home
#put /home/bailey/.Xresources /home/sark/backup/os/arch0924/dotfiles/home
#put -R /home/bailey/.config/alacritty /home/sark/backup/os/arch0924/dotfiles/dotconfig
#put -R /home/bailey/.config/i3 /home/sark/backup/os/arch0924/dotfiles/dotconfig
#put -R /home/bailey/.config/nvim /home/sark/backup/os/arch0924/dotfiles/dotconfig
#put -R /home/bailey/.config/picom /home/sark/backup/os/arch0924/dotfiles/dotconfig
#put -R /home/bailey/.config/polybar /home/sark/backup/os/arch0924/dotfiles/dotconfig
#put -R /home/bailey/.config/rofi /home/sark/backup/os/arch0924/dotfiles/dotconfig
#put -R /home/bailey/.config/cava /home/sark/backup/os/arch0924/dotfiles/dotconfig
#put -R /home/bailey/.config/vesktop/themes /home/sark/backup/os/arch0924/dotfiles/dotconfig/vesktop
#put -R /home/bailey/.config/dunst /home/sark/backup/os/arch0924/dotfiles/dotconfig
#put -R /home/bailey/Documents/keepass /home/sark/backup/files
#put -R /home/bailey/Documents/shfiles /home/sark/backup/files
#put -R /home/bailey/.apps/shellscripts /home/sark/backup/files
#put -R /home/bailey/Projects /home/sark/backup/files
#put -R /home/bailey/Pictures/GruvIcons /home/sark/backup/files/icons
#put -R /home/bailey/.local/share/applications /home/sark/backup/files/desktopfiles
#put -R /home/bailey/.config/hypr /home/sark/backup/os/arch0924/dotfiles/dotconfig
#put -R /home/bailey/.config/waybar /home/sark/backup/os/arch0924/dotfiles/dotconfig
#put -R /home/bailey/rice/* /home/sark/backup/files/rice
#put -R /home/bailey/Pictures/tekkenicons /home/sark/backup/files
#put -R /home/bailey/Pictures/tekkenguides /home/sark/backup/files
#put -R /home/bailey/Pictures/gruvfull /home/sark/backup/files
#exit
#EOF


#shutdown now
