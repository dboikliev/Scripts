# PowerShell script for pulling all repositories in a specified directory.

1. If a path is not supplied use the current directory.
1. Check if the path is a valid directory and display and error if not.
1. If the path is a valid directory get all sub-directories.
1. Filter out the ones that do not contain a .git folder.
1. For each of the remaining directories. CD to the directory and git pull then return back to the parent dir.
1. CD to the original directory.

#### Usage:

```powershell
PS C:\> .\pull-all.ps1 C:\Projects

Pulling C:\Playground\CommandLineParser
Already up-to-date.
Pulling C:\Playground\LinqTS
Already up-to-date.
Pulling C:\Playground\Scripts
Already up-to-date.
```
