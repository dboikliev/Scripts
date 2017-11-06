Param(
  [string]$path
)

$current = pwd

ls $path -Directory | ? { Test-Path "$($_.FullName)\.git" } | % { write "Pulling $($_.FullName)"; cd $_.FullName; git pull; cd .. }; cd $current