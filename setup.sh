sdo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y install terminator
sudo apt-get -y install open-vm-tools
sudo apt-get -y install vim
sudo apt-get -y install dropbox
sudo apt-get -y install spyder
cp git/.* ~
unzip ssh.zip -d ~
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa
  

echo "# Aliases" >> ~/.bashrc
echo "alias update='sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade'" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "eval `ssh-agent -s'" >> ~/.bashrc
