param(
  [Parameter(Mandatory = $True, Position = 0, ValueFromPipeline = $false)][System.String]$collectionFile
)

$Currentlocation = Get-Location

#& "$PSScriptRoot\update-repo.ps1"

Set-Location $Currentlocation

if (Test-Path "$PSScriptRoot\..\collection\$collectionFile") {
  foreach ($configFile in Get-Content "$PSScriptRoot\..\collection\$collectionFile") {
    Copy-Item -Path "$PSScriptRoot\..\config\$configFile" -Destination ".\$configFile"
    Write-Output "Copied $configFile to working directory."
  }
} else {
  Write-Output "$collectionFile collection does not exist!"
}