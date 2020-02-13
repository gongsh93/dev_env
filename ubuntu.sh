cd ~
sudo apt-get upgrade && sudo apt-get update

sudo apt-get install git
mkdir code
cd code
git clone https://github.com/gongsh93/dev_env

sudo apt-get install vim
cp ./dev_env/linux-ubuntu/.vimrc ~
cd ~
