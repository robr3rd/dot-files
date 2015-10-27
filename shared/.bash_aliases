# General system commands
alias lsm='ls -la | more'
alias ..='cd ..'
alias h='history'

# Git commands
alias pwb='git symbolic-ref --short -q HEAD' # pwb = "print working branch"
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gcm='git checkout master'
alias gm='git merge'
alias gmm='git merge master'
alias gr='git rebase'
alias grm='git rebase master'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsf='git push --force'
alias gpsnew='git push -u origin $(git symbolic-ref --short -q HEAD)'
alias gpstrack='git push -u origin $(git symbolic-ref --short -q HEAD)'
alias gpstrackf='git push --force -u origin $(git symbolic-ref --short -q HEAD)'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gsc='git stash clear'
alias gl='git log'
alias gd='git diff'
alias gdns='git diff --name-status' # Only filename and reason - not full diff
alias ga='git add . -A'
alias gfa='git fetch --all'
alias grhom='git reset --hard origin/master'
alias gamne='git commit --amend --no-edit' # Preserve commit message

# Git commands requiring arguments
alias grs='git reset' # [filepath / SHA /branch]
alias gbd='git branch -D' # [branch]
alias grshard='git reset --hard' # [filepath / SHA / branch]
alias gundo='git checkout --' # [filepath] - "Undo" changes in working branch
alias gam='git commit --amend -m' # "[commit message]"
