# Manually source .bashrc since OSX's Terminal.app runs a login shell instead of inheriting existing user auth
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi
