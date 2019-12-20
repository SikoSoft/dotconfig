
param(
  [Parameter(Mandatory = $True, Position = 0, ValueFromPipeline = $false)][System.String]$configFile,
  [Parameter(Mandatory = $False, Position = 1, ValueFromPipeline = $false)][switch]$u = $false
)

if ($u) {
  Write-Output "Updating the repo..."
  $Currentlocation = Get-Location
  & "$PSScriptRoot\update-repo.ps1"
  Set-Location $Currentlocation
}

if (Test-Path "$PSScriptRoot\..\config\$configFile") {
  Copy-Item -Path "$PSScriptRoot\..\config\$configFile" -Destination ".\$configFile"
  Write-Output "Copied $configFile to working directory."
} else {
  Write-Output "$configFile does not exist!"
}
