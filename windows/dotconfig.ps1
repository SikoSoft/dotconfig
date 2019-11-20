param(
  [Parameter(Mandatory = $True, Position = 0, ValueFromPipeline = $false)][System.String]$command,
  [Parameter(Mandatory = $False, Position = 1, ValueFromPipeline = $false)][System.String]$file
)

if (Test-Path "$PSScriptRoot\$command.ps1") {
  & "$PSScriptRoot\$command.ps1" $file
}
else {
  Write-Output "($command) is not a valid command."
}
