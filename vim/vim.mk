vim-base:
	ln -sh $(CURDIR)/vim/.vim ~/.vim
	ln -sh $(CURDIR)/vim/.vimrc ~/.vimrc
	@printf "\033[0;34mDon't forget to install Menlo for powerline from $(CURDIR)/fonts/Menlo-for-Powerline\033[0m\n"

vim-bepo: vim-base
	ln -sh $(CURDIR)/vim/.vimrc.bepo ~/.vimrc.bepo

clean-vim-base:
	unlink ~/.vim
	unlink ~/.vimrc

clean-vim-bepo: clean-vim-base
	unlink ~/.vimrc.bepo

vim: vim-base

thierry: vim-bepo

clean-thierry: clean-vim-bepo

