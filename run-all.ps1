#!/usr/bin/env pwsh
#requires -Version 7

# This script is a convienience wrapper that will run all appropriate scripts in the correct order.
# If this is the first time using this repository, please read the README and follow the appropriate steps for your OS.
param()

$ErrorActionPreference = "Stop"
. $PsScriptRoot/scripts/helpers.ps1

if (Test-Administrator) {
    Throw "This script must NOT be run as administrator/root"
}

Push-Location "$PsScriptRoot/scripts"
try {
    sudo ./install-apps_ubuntu.sh
    ./install-vscode-extensions.ps1
    ./clone-all-repos.ps1
}
finally {
    Pop-Location
}
