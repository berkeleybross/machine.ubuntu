#!/usr/bin/env pwsh
#requires -Version 7

# This file installs standard vscode extensions
param()

$ErrorActionPreference = "Stop"
. $PsScriptRoot/helpers.ps1

if (Test-Administrator) {
    Throw "This script must NOT be run as administator/root"
}

code --install-extension EditorConfig.EditorConfig
code --install-extension MS-vsliveshare.vsliveshare
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension coenraads.bracket-pair-colorizer-2
code --install-extension ms-vscode.PowerShell
code --install-extension esbenp.prettier-vscode
