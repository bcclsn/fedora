export ZSH=$HOME/.oh-my-zsh
export PATH=$HOME/bin:/usr/local/bin:$PATH
export LANG=it_IT.UTF-8
export EDITOR='vim'

HIST_STAMPS="mm/dd/yyyy"
#ZSH_THEME="bcclsn-v2"
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
plugins=(dirhistory web-search zsh-syntax-highlighting) 

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh/alias.zsh
source $HOME/.zsh/setopt.zsh

# Set tmux for all terminals
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux

##echo "inizio blocco info"
#echo ""
#echo "$fg[cyan] Last -Syu: $reset_color $(grep "pacman -Syu" /var/log/pacman.log | tail -n1 | cut -c 2- | cut -c -10)"
#echo "$fg[cyan] Kernel:    $reset_color $(uname -r)"
#echo ""
##echo "fine blocco info"


##echo "inizio blocco info - utente root"
#echo ""
#echo "$fg[cyan] Last -Syu: $reset_color $(grep "pacman -Syu" /var/log/pacman.log | tail -n1 | cut -c 2- | cut -c -10)"
#echo "$fg[cyan] Kernel:    $reset_color $(uname -r)"
#echo ""
#echo "$fg[cyan] Welcome to Archlinux... GOD Mode $reset_color"
#echo ""
##echo "fine blocco info - utente root"
