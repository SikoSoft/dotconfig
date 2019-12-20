param(
  [Parameter(Mandatory = $True, Position = 0, ValueFromPipeline = $false)][System.String]$command,
  [Parameter(Mandatory = $False, Position = 1)][System.String]$file,
  [Parameter(Mandatory = $False, Position = 2)][switch]$u = $false
)

$updateArg = ""
if ($u) {
  $updateArg = " -u"
}

if (Test-Path "$PSScriptRoot\$command.ps1") {
  & "$PSScriptRoot\$command.ps1" $file $u
}
else {
  Write-Output "'$command' is not a valid command."
}
