# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ewk"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will put -R /home/bailey/.config/dunst /home/sark/backup/os/arch0924/dotfiles/dotconfigbe interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change  only works on 1 monitorhow often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"rpad(cFamilyId,20,' ')||


# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"
export EDITOR='nvim'
# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias v="nvim"
alias sark="ssh sark@192.168.0.41"
alias sarkftp="sftp sark@192.168.0.41"
alias aries="ssh aries@192.168.0.31"
alias ariesftp="sftp aries@192.168.0.31"
alias deck="ssh deck@192.168.0.98"
alias deckftp="sftp deck@192.168.0.98"
alias b="/home/bailey/.apps/shellscripts/budget.sh"
alias p="sudo pacman -S"
alias y="yay -S"
alias d="dict"
alias ts="/home/bailey/.apps/shellscripts/sersync.sh"
alias edit="nvim /home/bailey/.zshrc"
alias nitro="nitrogen /home/bailey/Pictures/Wallpapers"
alias pipes="/home/bailey/.apps/shellscripts/pipes.sh -c 3,4,5,6 -p 3 -r 4000"
alias rain="/home/bailey/.apps/shellscripts/rain.sh"
alias clock="tty-clock -ctB -C6"
alias work="cd /run/media/bailey/USB\ DISK/Work/WIP; clear; ls"
alias w="cd ~/Work/wip; clear; ls"
alias send="~/.apps/shellscripts/works.sh"
alias down="~/.apps/shellscripts/workd.sh"
alias off="~/.apps/shellscripts/shutdown.sh"
alias nap="sleep 1; xset dpms force off"
alias sn="nvim /home/bailey/Documents/sysneeds"
alias crime="clear; sudo openvpn /etc/openvpn/client/client.conf"
alias uz="fastjar xvf"
alias wmnt="sudo mount /dev/sda3 /home/bailey/Windows; cd Windows/Users/dev/Desktop;"
alias uwmnt="cd; sudo umount /dev/sda3"
alias upc="sudo ~/.apps/shellscripts/updatecleanup.sh"
alias vh="nvim ~/.config/hypr/hyprland.conf"
alias ers="~/.apps/shellscripts/erswap.sh"
alias vmc="sudo /home/bailey/.apps/shellscripts/vmcopy.sh"
alias vmm="sudo /home/bailey/.apps/shellscripts/vmmnt.sh"
alias gtkfix="xhost si:localuser:root"
alias sffix="sudo sysctl kernel.split_lock_mitigate=0"
alias brcu="cp -R /home/bailey/.config/r2modmanPlus-local/BombRushCyberfunk/profiles/base/* /nvme/games/steam/steamapps/common/BombRushCyberfunk"
alias grvc="fim /home/bailey/Pictures/clrgrv.png"
alias reshade="~/.apps/shellscripts/reshade-linux.sh"
alias sdsync="~/.apps/shellscripts/sdsync.sh"
alias dq="~/.apps/shellscripts/quickdown.sh"
alias sq="~/.apps/shellscripts/quickup.sh"
alias fetch="fastfetch"
alias globe="~/.apps/shellscripts/animation/globe.sh"
alias rice="~/.apps/shellscripts/ricesave.sh"
alias commit="git commit -a"
alias push="git push"
alias f="python3 /ssd/software/anifetch/anifetch.py -f /ssd/software/anifetch/pls.mp4 --framerate 20 --width 60 --height 40 -ff --chroma 0x74797d:0.1:0.1"
alias cs="~/.apps/shellscripts/cs2.sh"
alias gi="~/.apps/shellscripts/gimp.sh"
alias tm="~/.apps/shellscripts/tekkeniconmove.sh"


#fastfetch
#pfetch

export PATH=$PATH:/home/bailey/.spicetify
