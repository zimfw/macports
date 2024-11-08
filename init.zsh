(( ${+commands[port]} )) || return 1

local popts=
if [[ -e /usr/local/Cellar ]]; then
  # Enable trace mode if Homebrew is installed in /usr/local
  popts=' -t'
fi
alias portc="sudo port${popts} clean --all installed"
alias portC="sudo port${popts} reclaim"
alias portd='port diagnose'
alias porti='port info'
alias portI="sudo port${popts} -c install"
alias portl='port installed'
alias portL='port installed requested'
alias portn='port notes'
alias porto='port outdated'
alias ports='port search'
alias portu="sudo port${popts} selfupdate"
alias portU="sudo port${popts} -u upgrade outdated"
alias portv='port variants'
alias portx="sudo port${popts} --follow-dependencies uninstall"
unset popts
