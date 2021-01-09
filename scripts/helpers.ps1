Function Exec() {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)][scriptblock]$cmd,
        [String]$message = "Failed to run $cmd"
    )

    & $cmd

    if ($global:LastExitCode -ne 0) {
        throw $message
    }
}

function Test-Administrator {
    if ($IsLinux) {
        return ((id -u) -eq 0)
    }

    throw "Unknown operating system"
}

function Sudo {
    if ($IsLinux) {
        $parameters = $args
        Exec { bash -c "sudo $parameters"} -Message "Failed to sudo $parameters"
        return
    }

    throw "Unknown operating system"
}
