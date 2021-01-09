function Test-Administrator {
    if ($IsLinux) {
        return ((id -u) -eq 0)
    }

    throw "Unknown operating system"
}