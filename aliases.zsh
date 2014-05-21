# directories
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

# vim
alias v="mvim"
alias vd="mvim -d"
alias gvimdiff="mvim -d"

# zsh configs
alias zshconfig="mvim ~/.zshrc"
alias szr="source ~/.zshrc"

#git
alias g='nocorrect git'

#bundler

alias b="nocorrect bundle"
alias bb="nocorrect bundle -j4"
alias be="nocorrect bundle exec"
alias br="nocorrect bundle exec rake"
alias bt="nocorrect bundle exec rspec"
alias bnp="nocorrect bundle --without production"

# Optimis
alias sel_intg="INTEGRATION=true DRIVER=selenium be rspec"
alias sel_intgall="INTEGRATION=true DRIVER=selenium be rspec spec/features"
alias intg="INTEGRATION=true be rspec"
alias intgall="INTEGRATION=true be rspec spec/features"
alias jspec="RAILS_ENV=INTEGRATION br konacha:serve"

#emacs
alias em="open -a Emacs"
alias emd="emacs --daemon"
alias ec="emacsclient -c"
alias et="emacsclient -t"

#postgresql
alias pgup="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pghalt="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

#nocorrect zsh
alias cap="nocorrect cap"
alias spec="nocorrect spec"
alias mmv="noglob zmv -W"

#clean open_with
alias cleanOpenWith="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user"

# usually typed
frequentlyHistory(){
  awk '{a[$2]++}END{for(i in a){print a[i] " " i}}'
}

alias usuallyTyped='history 0 | frequentlyHistory | sort -rn | head -20'

# fasd
# unalias j
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
# alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
alias vf='f -e mvim'        # file
alias o='a -e open'        # file

# youtube-dl
alias yt4='youtube-dl -o "%(title)s.%(ext)s" -q --extract-audio --audio-format "m4a" '
alias yt3='youtube-dl -o "%(title)s.%(ext)s" -q --extract-audio --audio-format "mp3" '

# maven
alias m='mvn -q'

c(){
  gcc "$@"
  ./a.out
}

alias tf='tail -f'
alias tn='tail -n'

alias cov='open ./coverage/index.html'

# MiddleMan
alias mm='middleman'