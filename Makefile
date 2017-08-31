init:
	git submodule init && git submodule update

linux: vim git

mac: vim git iterm2 zsh

clean-mac: clean-vim-base clean-git clean-iterm2 clean-zsh

clean-linux: clean-vim-base clean-git
	
include git/git.mk vim/vim.mk iterm2/iterm2.mk zsh/zsh.mk
