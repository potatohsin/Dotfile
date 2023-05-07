# oh-my-zsh settings
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# alias
alias proxy="export all_proxy=socks5://127.0.0.1:20170"
alias unproxy="unset all_proxy"

# git ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github-fedora-pc
clear