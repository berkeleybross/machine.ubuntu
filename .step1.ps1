sudo snap install gitkraken
sudo snap install spotify
sudo snap install --classic vscode
sudo snap install --classic rider
sudo snap install node --channel=10/stable --classic

sudo apt-get update
sudo apt-get install -y `
    apt-transport-https `
    ca-certificates `
    curl `
    gnupg-agent `
    software-properties-common
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository `
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu `
   $(lsb_release -cs) `
   stable"
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
