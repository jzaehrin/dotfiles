zsh:
	ln -sh $(CURDIR)/zsh/.zsh ~/.zsh
	ln -sh $(CURDIR)/zsh/.zshrc ~/.zshrc
clean-zsh:
	unlink ~/.zsh
	unlink ~/.zshrc
