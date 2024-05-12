$apps = @(
    "Docker.DockerDesktop",
    "Microsoft.PowerShell",
    "VMware.WorkstationPlayer")

foreach ($app in $apps) {
    Write-Output "winget install $app --accept-source-agreements --accept-package-agreements" | Invoke-Expression
}