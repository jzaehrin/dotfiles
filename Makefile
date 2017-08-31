init:
	git submodule init && git submodule update

linux: vim git

mac: vim git iterm2 zsh

vim: vim-base

thierry: vim-bepo

vim-base:
	ln -s $(CURDIR)/.vim ~/.vim
	ln -s $(CURDIR)/.vimrc ~/.vimrc

vim-bepo: vim-base
	ln -s $(CURDIR)/.vimrc.bepo ~/.vimrc.bepo

git:
	ln -s $(CURDIR)/.gitignore.local ~/.gitignore
	ln -s $(CURDIR)/.gitconfig.local ~/.gitconfig

iterm2:
	ln -s $(CURDIR)/.iterm2 ~/.iterm2
	@printf "\033[0;31mDon't forget to link iterm2 to this folder\033[0m\n"

zsh:
	ln -s $(CURDIR)/.zsh ~/.zsh
	ln -s $(CURDIR)/.zshrc ~/.zshrc

clean-mac: clean-vim-base clean-git clean-iterm2 clean-zsh

clean-linux: clean-vim-base clean-git

clean-vim-base:
	unlink ~/.vim
	unlink ~/.vimrc

clean-git:
	unlink ~/.gitignore
	unlink ~/.gitconfig

clean-iterm2:
	unlink ~/.iterm2

clean-zsh:
	unlink ~/.zsh
	unlink ~/.zshrc
