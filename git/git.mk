git:
	ln -sh $(CURDIR)/git/.gitignore ~/.gitignore
	ln -sh $(CURDIR)/git/.gitconfig ~/.gitconfig

clean-git:
	unlink ~/.gitignore
	unlink ~/.gitconfig
