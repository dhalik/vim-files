cp -r `pwd`/colors ~/.vim/colors
ln -s `pwd`/tmux.conf ~/.tmux.conf
ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/xmobarrc ~/.xmobarrc
ln -s `pwd`/bashrc ~/.bashrc
ln -s `pwd`/xmonad ~/.xmonad
sudo apt-get install xmonad suckless-tools tmux python3.4-dev git vim python3 \
        g++ xmobar exuberant-ctags markdown
