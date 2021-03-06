Param(
    [string]$Path = '.'
)

if (![System.IO.Directory]::Exists($Path)) {
    Write-Error "$($Path) is not a directory."
    exit 1
}

$current = Get-Location  
Get-ChildItem $Path -Directory | 
Where-Object { Test-Path "$($_.FullName)\.git" } | 
ForEach-Object { 
    Write-Output "Pulling $($_.FullName)"
    Set-Location $_.FullName
    git pull
    Set-Location .. 
}; 

Set-Location $current