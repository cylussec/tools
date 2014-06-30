sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get install terminator
sudo apt-get install open-vm-tools
cp git/* ~
unzip ssh.zip -d
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa
  

echo "# Aliases" >> ~/.bashrc
echo "alias update='sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade'" >> ~/.bashrc
