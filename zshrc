# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/home/amb/.oh-my-zsh"


if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.my_bin" ] ;
  then PATH="$HOME/.my_bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
plugins=(git fast-syntax-highlighting)
#run "fast-theme spa" inorder to set the fast-syntax-highlighting theme to spa 
DISABLE_AUTO_UPDATE="true"
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#####Ailiases

#alias la='ls -a'
#alias ll='ls -la'
#alias l='ls'
alias lh='ls -lah'

#####Commands Aliases

alias f='ranger'
alias kill='tmux kill-session'
alias wsl='cd /mnt/d/WSL'
alias arch-wiki="cd /usr/share/doc/arch-wiki/html/en"
alias ghidra='cd /mnt/d/WSL/ghidra/ghidra_9.1.2_PUBLIC && ./ghidraRun && exit'
alias mcube='musikcube'
alias vi='nvim'
alias nv='nvim -u /mnt/d/WSL/test/nvcode/init.lua'
alias ee='exit'
alias mm='cd /mnt/d/WSL/multimonitor/ && ./run-in-terminal.txt && cd'
alias games='cd /mnt/d/Games'
alias exercism='~/bin/exercism'
alias anybase='cd /mnt/d/WSL/projects/coding/ && ./anybase.sh && cd '
alias jop='cd /home/amb/.joplin-bin/bin/ && ./joplin && cd'
alias dev='cd /mnt/g/git-home'
alias eclipse='cd /mnt/d/WSL/scripts && ./eclipse.txt && exit '
alias cube32='cd /mnt/d/WSL/scripts && ./cube32.txt && exit '
alias joplin='cd /mnt/d/WSL/joplin && ./Joplin.AppImage && cd '
alias com='minicom -b 115200 -D /dev/ttyACM0'
alias xampp='cd /opt/lampp/ && ./xampp && cd '
alias weather='curl wttr.in'
alias forecast='curl v2d.wttr.in/Tehran'
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias tasks='cd /mnt/d/tasks'
alias fdf='cd /mnt/d/Siesta/my_fdf_files'
alias dft='cd /mnt/d/Siesta/SIESTA/siesta-4.1.5/'
alias cat='bat'
alias fadict='nerd-dictation begin --vosk-model-dir=/mnt/d/speech_to_txt_models/fa_model --defer-output --output=STDOUT > ./output.txt &'
alias endict='nerd-dictation begin --vosk-model-dir=/mnt/d/speech_to_txt_models/en_model --defer-output --output=STDOUT > ./output.txt &'
alias dict='nerd-dictation end'


#####exa replacement with ls

alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

#####change shell to others 

alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

#### navigation
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../..'
alias .5='cd ../../../..'
alias .6='cd ../../../../..'

#get fastest mirrors in your neighborhood
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

#neofetch
#####EXPORTS
export EDITOR= nvim
export VISUAL= nvim
export MANPAGER='nvim +Man!'
export PATH=/mnt/d/WSL/JDK/open-jdk/jdk-11.0.8+10/bin:$PATH
export PATH=~/.emacs.d/bin/:$PATH
export PATH=/mnt/d/Siesta/SIESTA/siesta-4.1.5/Obj:$PATH
export PATH=/mnt/d/Siesta/VESTA-gtk3/:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/amb/.sdkman"
[[ -s "/home/amb/.sdkman/bin/sdkman-init.sh" ]] && source "/home/amb/.sdkman/bin/sdkman-init.sh"

#my prompt
source ~/.config/zsh/new_prompt.zsh
#nvm
source /usr/share/nvm/init-nvm.sh

