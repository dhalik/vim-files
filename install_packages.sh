sudo apt-get install -y tmux python3.4-dev git vim python3
sudo apt-get install -y g++ exuberant-ctags markdown
sudo apt-get install -y python3-numpy
sudo apt-get install -y python3-pip
sudo pip3 install seaborn
sudo pip3 install jupyter

[ -e ~/.cache/matplotlib ] || rm -r ~/.cache/matplotlib

# sudo apt-get install xmonad suckless-tools xmobar 
# sudo apt-get install libxss1 libappindicator1 libindicator7
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# sudo dpkg -i google-chrome*.deb

sudo apt-get install -f
