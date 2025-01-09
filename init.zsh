(( ${+commands[port]} )) || return 1

local sudoport='sudo port'
if [[ -e /usr/local/Cellar ]]; then
  # Enable trace mode if Homebrew is installed in /usr/local
  sudoport+=' -t'
fi
alias portc=${sudoport}' clean --all installed'
alias portC=${sudoport}' reclaim'
alias portd='port diagnose'
alias porti='port info'
alias portI=${sudoport}' install'
alias portl='port installed'
alias portL='port installed requested'
alias portn='port notes'
alias porto='port outdated'
alias ports='port search'
alias portu=${sudoport}' selfupdate'
alias portU=${sudoport}' -u upgrade outdated'
alias portv='port variants'
alias portx=${sudoport}' --follow-dependencies uninstall'
unset sudoport
