sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y install terminator open-vm-tools vim dropbox keychain spyder

cp git/.* ~
unzip ssh.zip -d ~
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa
cp .vimrc ~
mkdir ~/.spyder2
cp .spyder.ini ~/.spyder2/

#add aliases to bashrc
echo "# Aliases" >> ~/.bashrc
echo "alias update='sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade'" >> ~/.bashrc

#This sets up the keychain
echo "/usr/bin/keychain $HOME/.ssh/id_rsa" >> ~/.bashrc
echo "source $HOME/.keychain/$HOSTNAME-sh" >> ~/.bashrc

