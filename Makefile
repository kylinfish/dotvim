init:
	ln -fs `pwd`/.bashrc ~/.bashrc
	ln -fs `pwd`/.bash_aliases ~/.bash_aliases
	ln -fs `pwd`/.bash_completion.d ~/.bash_completion.d
	ln -fs `pwd`/.zshrc ~/.zshrc
	ln -fs `pwd`/dracula.zsh-theme `$OH_MY_ZSH`/themes/dracula.zsh-theme

	ln -fs `pwd`/.gitconfig ~/.gitconfig
	ln -fs `pwd`/.tigrc ~/.tigrc

	ln -fs `pwd`/.tmux.conf ~/.tmux.conf
	ln -fs `pwd`/.tmux.conf.local ~/.tmux.conf.local
	ln -fs `pwd`/.vim ~/.vim
	ln -fs `pwd`/.vimrc ~/.vimrc
	ln -fs `pwd`/.ackrc ~/.ackrc
	ln -fs `pwd`/.tldrrc ~/.tldrrc

update:
	git pull
