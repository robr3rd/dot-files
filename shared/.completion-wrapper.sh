# Author.: Ole J
# Date...: 23.03.2008
# License: Whatever

# Wraps a completion function
# make-completion-wrapper <actual completion function> <name of new func.>
#                         <command name> <list supplied arguments>
# eg.
#   alias agi='apt-get install'
#   make-completion-wrapper _apt_get _apt_get_install apt-get install
# defines a function called _apt_get_install (that's $2) that will complete
# the 'agi' alias. (complete -F _apt_get_install agi)
#
function make-completion-wrapper () {
	local function_name="$2"
	local arg_count=$(($#-3))
	local comp_function_name="$1"
	shift 2
	local function="
function $function_name {
	((COMP_CWORD+=$arg_count))
	COMP_WORDS=( "$@" \${COMP_WORDS[@]:1} )
	"$comp_function_name"
	return 0
}"
	eval "$function"
}

# and now the commands that are specific to this SO question

#alias gco='git checkout'

# we create a _git_checkout_mine function that will do the completion for "gco"
# using the completion function "_git"
make-completion-wrapper _git _git_checkout_mine git checkout
make-completion-wrapper _git _git_branch_mine git branch
make-completion-wrapper _git _git_rebase_mine git rebase
make-completion-wrapper _git _git_revert_mine git revert
make-completion-wrapper _git _git_stash_mine git stash
make-completion-wrapper _git _git_reset_mine git reset
make-completion-wrapper _git _git_merge_mine git merge
make-completion-wrapper _git _git_diff_mine git diff
make-completion-wrapper _git _git_pull_mine git pull
make-completion-wrapper _git _git_push_mine git push
make-completion-wrapper _git _git_add_mine git add
make-completion-wrapper _git _git_log_mine git log

# we tell bash to actually use _git_checkout_mine to complete "gco"
complete -o bashdefault -o default -o nospace -F _git_branch_mine gb
complete -o bashdefault -o default -o nospace -F _git_branch_mine gbd
complete -o bashdefault -o default -o nospace -F _git_checkout_mine gc
complete -o bashdefault -o default -o nospace -F _git_merge_mine gm
complete -o bashdefault -o default -o nospace -F _git_rebase_mine gr
complete -o bashdefault -o default -o nospace -F _git_pull_mine gpl
complete -o bashdefault -o default -o nospace -F _git_pull_mine gplr
complete -o bashdefault -o default -o nospace -F _git_push_mine gps
complete -o bashdefault -o default -o nospace -F _git_push_mine gpsf
complete -o bashdefault -o default -o nospace -F _git_stash_mine gsl
complete -o bashdefault -o default -o nospace -F _git_stash_mine gsp
complete -o bashdefault -o default -o nospace -F _git_stash_mine gsc
complete -o bashdefault -o default -o nospace -F _git_log_mine gl
complete -o bashdefault -o default -o nospace -F _git_diff_mine gd
complete -o bashdefault -o default -o nospace -F _git_diff_mine gdns
complete -o bashdefault -o default -o nospace -F _git_add_mine ga
complete -o bashdefault -o default -o nospace -F _git_fetch_mine gfa
complete -o bashdefault -o default -o nospace -F _git_amend_mine gamne
complete -o bashdefault -o default -o nospace -F _git_reset_mine grs
complete -o bashdefault -o default -o nospace -F _git_reset_mine grshard
complete -o bashdefault -o default -o nospace -F _git_commit_mine gundo
complete -o bashdefault -o default -o nospace -F _git_commit_mine gam
