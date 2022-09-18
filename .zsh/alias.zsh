alias off='systemctl poweroff'
alias ls='ls --classify --color=auto --human-readable'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias less='less --quiet'
alias h='cd ~'
alias grep='grep --color=auto'
alias dmesg='dmesg -H'
alias q='exit'
alias df='df --human-readable'
alias su='su -l'
alias paclog='tail -n 40 /var/log/pacman.log'
alias kill='tmux kill-session -t'
alias x='startx'
alias c='clear'
alias upgrade='sudo sh /home/bcclsn/.script/btrfs_snap.sh && sudo dnf upgrade'
alias snapshot='sudo sh /home/bcclsn/.script/btrfs_snap.sh'
alias routing='java -jar /opt/freeRouting_20190401.jar'
alias backup='sh .script/backup_mega.sh -b'
alias free='free -h'
alias logcat='cat .log/duplicity.log | tail -n 45'
alias copy='rsync -a --info=stats1,progress2'                                   # stats=(1:compact - 2:extended) // progress=(1:per-file - 2:total)
