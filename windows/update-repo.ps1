Set-Location -Path $PSScriptRoot

git fetch 2>&1 | Out-Null
git pull 2>&1 | Out-Null
