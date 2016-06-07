sudo apt-get install g++ suckless-tools tmux python3.4-dev git vim python3 exuberant-ctags markdown
# sudo apt-get install xmonad xmobar 
sudo apt-get install python3-numpy
sudo apt-get install python3-pip
sudo pip3 install seaborn

[ -e ~/.cache/matplotlib ] || rm -r ~/.cache/matplotlib

sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

sudo apt-get install -f
