iterm2:
	ln -sh $(CURDIR)/iterm/.iterm2 ~/.iterm2
	@printf "\033[0;34mDon't forget to link config of iterm2 to this folder\033[0m\n"

clean-iterm2:
	unlink ~/.iterm2
