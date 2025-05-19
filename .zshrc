# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Archivo .zshrc modificado para activar Powerlevel10k con Oh My Zsh

# Configuración básica de Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Fuentes y plugins
plugins=(git sudo)

# Cargar Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Configuraciones adicionales de ZSH que ya tenías
setopt autocd
setopt interactivecomments
setopt magicequalsubst
setopt nonomatch
setopt notify
setopt numericglobsort
setopt promptsubst
WORDCHARS=${WORDCHARS//\/}

# Configuraciones de keybindings que ya tenías
bindkey -e
bindkey ' ' magic-space
bindkey '^U' backward-kill-line
bindkey '^[[3;5~' kill-word
bindkey '^[[3~' delete-char
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[5~' beginning-of-buffer-or-history
bindkey '^[[6~' end-of-buffer-or-history
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[Z' undo

# Configuración de historial
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
alias history="history 0"

# Las configuraciones de alias que ya tenías
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias ts='bash /opt/Central-InfoSec/Tilix-Kali-Setup/set-tilix-quake-size.sh' 
alias tt='bash /opt/Central-InfoSec/Tilix-Kali-Setup/set-tilix-transparency.sh' 
alias th='bash /opt/Central-InfoSec/Tilix-Kali-Setup/show-tilix-keyboard-shortcuts.sh' 
alias burp='/usr/lib/jvm/java-21-openjdk-amd64/bin/java --add-opens=java.desktop/javax.swing=ALL-UNNAMED --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED -javaagent:/home/kali/Burpsuite-Professional/loader.jar -noverify -jar /home/kali/Burpsuite-Professional/burpsuite_pro_v2024.11.1.jar'

# Variables de entorno
export PATH="$PATH:/home/kali/bin"
export ZSH_CUSTOM=~/.oh-my-zsh/custom

# Habilitar syntax highlighting si existe
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    . /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Para cargar el tema de Powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
