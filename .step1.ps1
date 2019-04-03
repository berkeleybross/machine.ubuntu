snap install gitkraken
snap install --classic vscode
sudo snap install dotnet-sdk --classic
snap install rider --classic
snap install spotify
snap install node --channel=10/stable --classic

apt-get update
apt-get install -y `
    apt-transport-https `
    ca-certificates `
    curl `
    gnupg-agent `
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository `
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu `
   $(lsb_release -cs) `
   stable"
apt-get install -y docker-ce docker-ce-cli containerd.io
