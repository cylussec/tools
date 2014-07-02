#get everything installed and updated
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get install terminator
sudo apt-get install open-vm-tools

#copy everything to where it needs to be
cp git/* ~              #git configs
unzip ssh.zip -d        #ssh keys (will ask for password
eval `ssh-agent -s`     
ssh-add ~/.ssh/id_rsa
cp .vimrc ~

#add aliases to bashrc
echo "# Aliases" >> ~/.bashrc
echo "alias update='sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade'" >> ~/.bashrc
echo "eval `ssh-agent -s`"
