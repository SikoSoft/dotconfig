
param(
  [Parameter(Mandatory = $True, Position = 0, ValueFromPipeline = $false)][System.String]$configFile
)

if (Test-Path "$PSScriptRoot\..\config\$configFile") {
  Copy-Item -Path "$PSScriptRoot\..\config\$configFile" -Destination ".\$configFile"
  Write-Output "Copied $configFile to working directory."
} else {
  Write-Output "$configFile does not exist!"
}

