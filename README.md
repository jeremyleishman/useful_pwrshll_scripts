# Useful Powershell Scripts for Windows OS
-------
## Useful powershell scripts for working with Microsoft servers via PowerShell.
-------
## This repo contains random cmdlets and small scripts that I've used on various projects.
## Some of the Windows CLI syntax work in Powershell
## Examples:
`Ipconfig` `Ping` `CD` `Dir` `Clear` `Help`
## These are actually aliases or substitutes for real Powershell cmdlets
## Some Linux CLI commands will work as well
## Examples:
`ls` `history`

------
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

`Get-Sql (Get-Clipboard)`
#### will return the contents of your clipboard and return them in the following format
#### ('server1', 'server2', 'server3')
--- 
`Test-Connection (Get-Clipboard) | Export-Csv C:\temp\spreadsheet1.csv`
#### this will run the test-connection cmdlet against the servers in your clipboard
#### and export it to the designated folder
---
`GetMac /s Server1 /v`
#### this will return the verbose mac info for the specified server
---
`Get-DfsRoot -ComputerName Server1 | Out-Gridview`
#### This will return (and output in grid format) the results ran
#### against the specified server with the following info:
#### Path, Type, Properties, TimetoLiveSec, State & Description
---
`Get-SmbShare | Export-Csv \\myserver\desktop\new_file.csv`
#### This will return a list of all smb shares on the host server it is ran on
#### List will show the Name, ScopeName, Path & Description
`Get-SmbShare | FL`
#### to parse into file list view
---
`Net Share shared_folder$`
#### This will return info on the specified shared folder
---
`Get-SmbShareAccess shared_folder$`
#### This will return a list of the access writes for specified shared folder
---
`Test-All Server1`
#### This will return loads of info including IP and OrgUnit for specified server
---
`Test-NetConnection Server1`
#### This will return the computername, remote address, interface alias & source IP

`New-Item -Path $env:userprofile\Desktop\'my_folder' -ItemType Directory`
#### This will create a new folder in the specified location
---
`Get-ADComputer 'Server1'`
#### This will return the distinguished name, name, object class
#### The Object FUID, SamAccountName & SID
---
`(Get-Acl D:\shared_drive).Access | Out-Gridview`
#### This will output the NTFS Permissions for the specified folder
---
`Install-Module -Name GetSTFolderSize`
#### Run this as Admin
#### Installs the necessary module to get individual folder sizes
#### Then you can use the following cmdlet:
`Get-STFolderSize -Path '\\Server1.mydomain.com\shared_folder$'`
#### Output will be the specified folder in bytes, megabytes, GB & TB
#### Pipe the following onto the end to show only in GB:
`| Select TotalGBytes`
---
`Invoke-Command -ScriptBlock {(Get-SmbShareAccess 'shared_folder$)} -ComputerName Server1 | Select name,accountname,accessright`
#### This will run the get-smbshareaccess cmdlet remotely against
#### the specified server
---
`Get-SMBShare`
#### Will return all smb shares on the host server
#### showing Name, ScopeName, Path & Description
---
`Net Share Shared_folder$`
#### Will return folder info on the specified shared folder
---
`Get-SmbShareAccess Shared_folder$`
#### Will return a list of who has access to the specified shared folder
#### will list what type of access each account has (read/write)
---
`Get-WinVer`
#### Will return which windows version the host system is running
#### examples of use below:
`Get-WinVer (get-clipboard)`
`Get-WinVer Server1`
---
`Invoke-Command -ComputerName $using:fqdn -ScriptBlock {((Get-WmiObject -class Win32_OperatingSystem).Caption)}`
#### This will also return which windows version is running
---
`Invoke-Command -ComputerName $using:fqdn -ScriptBlock {)Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").UBR}`
#### Will list the UBR number for the specified server
#### Used to check patch compliance
---
`$serverName = $serverName.Trim().ToUpper()`
#### This will strip out white space and set to UPPERCASE
---
`Get-STDotNetVersion -ComputerName Server1,Server2,Server3 -PSRemoting`
#### Will output which version of .net is installed on each server
#### that is passed in as an argument
---
`md C:\Users\Me\Desktop\MyFolder`
#### This will create a new folder in the specified location
---
`notepad C:\Users\Me\Desktop\mytxtfile.txt`
#### This will open the notepad program and specified txt file
---
`Move-Item C:\CopiedFolder -Destination C:\MovedFolder -Verbose`
#### Will move specified folder to specified destination
---
`Rename-Item C:\MovedFolder -NewName C:\RenamedFolder`
#### This will rename the specified folder to the new specified name
---
`Query User /Server:server1`
#### for listing who is logged on to the specified server
#### will list the username,sessionname,ID,state,idletime & logintime for each user
---
`Restart-Computer -Confirm`
#### This will restart your computer upon confirmation from user
---
`Stop-Computer -ComputerName Server1 -Force`
#### This will force the shutdown of the specified remote server
---
`Get-CimInstance -ClassName win32_operatingsystem | select csname,lastbootuptime`
#### This will return the last boot time of the system it is run on
---
`RoboCopy.exe \\Server1\desktop\folder '\\Server6\desktop\folder'`
#### This will copy the specified folder onto the specified server
---
