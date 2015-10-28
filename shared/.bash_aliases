# General system commands
alias lsm='ls -lA | more'
alias ..='cd ..'
alias h='history'
alias dif='diff -u' # [original_file] [new_file] - Modern, unified output format

# Git commands
alias pwb='git symbolic-ref --short -q HEAD' # pwb = "print working branch"

alias gs='git status'

alias gb='git branch'
alias gbd='git branch -D' # [branch]

alias gco='git checkout'
alias gcob='git checkout -b' # [new_branch_name]
alias gcom='git checkout master'
alias gundo='git checkout --' # [filepath] - "Undo" changes in working branch

alias gm='git merge'
alias gmm='git merge master'
alias gr='git rebase'
alias grm='git rebase master'

alias gfa='git fetch --all'

alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsf='git push --force'
alias gpsnew='git push -u origin $(git symbolic-ref --short -q HEAD)'
alias gpstrack='gpsnew'
alias gpstrackf='gpstrack --force'

alias gsl='git stash list'
alias gsp='git stash pop'
alias gsc='git stash clear'

alias gl='git log --pretty=format:"%C(auto)%h by %C(green)%an %C(red)<%aE>%C(reset) %C(blue)%ar%C(reset)%C(auto) - %s"'
alias glo='git log --pretty=oneline'
alias glnm='git log --no-merges'

alias gd='git diff --name-status'
alias gdm='gd master'

alias ga='git add . -A'
alias gc='git commit -am' # "[commit message]"
alias gca='git commit --amend -m' # "[commit message]"
alias gcap='git commit --amend --no-edit' # Preserve commit message

alias grs='git reset' # [filepath / SHA /branch]
alias grsh='git reset --hard' # [filepath / SHA / branch]
alias grhom='grsh origin/master'
