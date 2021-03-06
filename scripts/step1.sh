#!/usr/bin/env bash
sudo apt-get update

# Dotnet core
sudo apt-key adv --keyserver packages.microsoft.com --recv-keys EB3E94ADBE1229CF
sudo apt-key adv --keyserver packages.microsoft.com --recv-keys 52E16F86FEE04B979B07E28DB02C46DF417A0893
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-bionic-prod bionic main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-get update
sudo apt-get install dotnet-sdk-2.2 -y

# Powershell
sudo apt-get install snapd -y
sudo snap install powershell --classic

# Install more tools within powershell
pwsh .step1.ps1
