# `ls` note: The `-G` flag on OSX is an override to use the standard Linux `ls` over built-in BSD one, NOT `--no-group`
alias l='ls -AGLh' # Same as `cls` but not a vertical list
alias cls='ls -lAGLh' # "Colored `ls`"
alias clsm='ls -lAGLh| more' # "Colored `ls` with `more`"
