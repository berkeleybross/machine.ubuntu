#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install snapd -y
sudo snap install powershell --classic
sudo pwsh .step1.ps1
