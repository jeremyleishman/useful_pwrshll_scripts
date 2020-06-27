# Useful Powershell Scripts for Windows OS

## Useful powershell scripts for working with Microsoft servers via PowerShell.

## This repo contains random cmdlets and small scripts that I've used on various projects.

### `Get-Help Get`
#### This cmdlet will return a very long list of all the Get- cmdlets
#### Just like `Get-Help`, `Get-Help Test` will return a list of all Test- cmdlets

### `Get-Help Get-Service -Online` 
#### to open a help page online instead of in Powershell

### `Get-Help Get-ChildItem -Detailed`

### `Get-History`
#### will pull a list of your PS session (will show as an id)
### `Invoke-History -id 24`
#### will re-execute the specified command so you don't have to retype it

-------------------------------------
### Useful one line scripts & cmdlets
-------------------------------------

#### `Get-WindowsUpdateLog` to get the log of installed updates
#### `Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force` for unrestricted Powershell profile
#### `Start compmgmt.msc` to start the Computer Management Console
#### `Restart-Computer -Confirm` to restart the computer - will prompt for confirmation
#### `Restart-Computer -ComputerName server1 -Force` to force restart of remote computer
#### `net localgroup administrators` will pull list of all admin accounts on the computer

#### `query user server/: server1` will return a list of all logged on users for the specified computer

#### `Compress-Archive -LiteralPath <PathToFiles> -DestinationPath <PathToDestination>`
#### This will zip the selected files and place them in the specified location

#### `Compress-Archive -Path C:\path\to\file\*.jpg -DestinationPath C:\path\to\archive.zip`
#### This will zip only .jpg files

#### `Expand-Archive -LiteralPath <PathToZipFile> -DestinationPath <PathToDestination>`
#### This will unzip specified files into the specified location