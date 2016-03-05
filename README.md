# dot-files
Helpful shell login dot-files, such as `.bash_profile` and `.bashrc`.

To install, run the `install.sh` script inside of the folder that represents your Operating System.

# Features
## Git autocompletion
The included file (`shared/.git-completion.bash`) should be fine, but for an up-to-date edition (if desired), run: `curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ./shared/.git-completion.bash`.

## Cross-platform compatibility
Except Windows. Because honestly, who uses the Windows command line?

Support for:

- Linux (obvious and easy)
- OS X (accounts for some of the BSD-isms of OS X's non-GNU default binaries and works with `Terminal.app`'s weird login shell policy)


# Roadmap
- I could definitely integrate an automated check for `.git-completion.bash` being up-to-date in the future via `diff <(curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash) .git-completion.bash`)
