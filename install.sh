mkdir -p ~/.vim
[ -e "~/.vim/colors" ] || ln -s `pwd`/colors ~/.vim/colors
[ -e "~/.tmux.conf" ] || ln -s `pwd`/tmux.conf ~/.tmux.conf
[ -e "~/.vimrc" ] || ln -s `pwd`/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
[ -e "~/.xmobarrc" ] || ln -s `pwd`/xmobarrc ~/.xmobarrc
[ -e "~/.bashrc" ] || ln -s `pwd`/bashrc ~/.bashrc
[ -e "~/.xmonad/" ] || ln -s `pwd`/xmonad ~/.xmonad
