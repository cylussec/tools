sudo apt-get update
sudo apt-get -y install aptitude

sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

sudo aptitude upgrade
sudo aptitude dist-upgrade
sudo aptitude -y install terminator open-vm-tools vim dropbox keychain

cp git/.gitignore ~
cp git/.gitconfig ~
unzip ssh.zip -d ~
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa
cp .vimrc ~

#add aliases to bashrc
echo "# Aliases" >> ~/.bashrc
echo "alias update='sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get autoremove'" >> ~/.bashrc

#This sets up the keychain
echo "/usr/bin/keychain $HOME/.ssh/id_rsa" >> ~/.bashrc
echo "source $HOME/.keychain/$HOSTNAME-sh" >> ~/.bashrc

