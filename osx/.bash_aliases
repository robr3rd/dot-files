# `ls` note: The `-G` flag on OSX is an override to use the standard Linux `ls` over built-in BSD one, NOT `--no-group`
alias l='ls -AGh' # Same as `cls` but not a vertical list
alias lsl='ls -lG'
alias cls='ls -lAGh' # "Colored `ls`"
alias clsm='ls -lAGh| more' # "Colored `ls` with `more`"
