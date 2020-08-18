# PowerShell Cheat Sheet

## Basic PowerShell Cheat Sheet & Commands
---
### Basic Commands
#### Cmdlet: Commands built into shell written in .NET
#### Functions: Commands writen in PowerShell language
#### Parameter: Argument to a Cmdlet/Function/Script
#### Alias: Shortcut for a Cmdlet or Function
#### Scripts: Text files with .ps1 extension
#### Applications: Existing windows programs
#### Pipelines: Pass objects Get-Process word | Stop-Process
#### Ctrl+c: Interrupt current command
#### Left/Right: Navigate editing cursor
#### Ctrl+Left/Right: Navigate a word at a time
#### Home / End: Move to Start or End of line
#### Up / Down: Move up and down through cmd history
#### Insert: Toggles between insert/overwrite mode
#### F7: Command history in a window
#### Tab / Shift-Tab: Command line completion
---
### Variables
#### $var = "string": Assign variable
#### $a,$b = 'a','b': Assign multiple variables
#### $a,$b = $b,$a: Flip variables
#### $var=[int]5: Strongly typed variables
----
### Help
#### Get-Command: Get all commands
#### Get-Command -Module RGHS: Get all commands in RGHS module
#### Get-Command Get-p*: Get all commands starting with get-p
#### Get-help get-process: Get help for command
#### Get-Process | Get-Member: Get members of the object
#### Get-Process | Format-list -properties *: Get-Process as list with all properties
----
### Scripts
#### Set-ExecutionPolicy -ExecutionPolicy: Bypass Set execution policy to allow all scripts
#### ."\\c-is-ts-91\c$\scripts\script.ps1": Run script.ps1 script in current scope
#### &"\\c-is-ts-91\c$\scripts\script.ps1": Run script.ps1 script in script scope
#### .\script.ps1: Run script.ps1 in script scope
#### $profile: Your personal profile that runs at launch
----
### Import, Export, Convert
#### Export-CliXML
#### Import-CliXML
#### ConvertTo-XML
#### ConvertTo-HTML
#### Export-CSV
#### Import-CSV
#### ConvertTo-CSV
#### ConvertFrom-CSV
----
### Flow Control
#### If(){} Else{}
#### While(){}
#### For($i=0; $i-lt 10; $i++){}
#### Foreach($file in dir C:\){$file.name}
#### 1..10 | foreach{$_}
----
### Comments, Escape Characters
#### Comment: single line comment
#### <#comment#>: multiple line comment
#### "'"test'"": Escape character'
#### 't: Tab
#### 'n: New line
#### ': Line continue
----
### Parameters
#### -Confirm: Prompt whether to take action
#### -WhatIf: Displays what command would do
----
### Assignment, Logical, Comparison
#### =, +=, -=, ++, --: Assign values to variables
#### -and, -or, -not,!: Connect expressions / statements
#### -eq, -ne: Equal, not equal
#### -gt, -ge: Greater than, greater than or equal
#### -lt, -le: Less than, less than or equal
#### -replace: "Hi" -replace "H","P" (will return "Pi")
#### -match, -notmatch: Regular expression match
#### -like, -notlike: Wildcard matching
#### -contains, -notcontains: Check if value in array
#### -in, -notin: Reverse of contains, notcontains
----
### Common cmdlets
#### cd, chdir, sl: Set-Location
#### cat, gc, type: Get-Content
#### ac: Add-Content
#### sc: Set-Content
#### copy, cp, cpi: Copy-Item
#### del, erase, rd, ri, rm, rmdir: Remove-Item
#### mi, move, mv: Move-Item
#### si: Set-Item
#### ni: New-Item
#### sleep: Start-Sleep
#### sajb: Start-Job
#### compare, diff: Compare-Object
#### group: Group-Object
#### curl, iwr, wget: Invoke-WebRequest
#### measure: Measure-Object
#### nal: New-Alias
#### rvpa: Resolve-Path
#### rujb: Resume-Job
#### set, sv: Set-Variable
#### shcm: Show-Command
#### sort: Sort-Object
#### sasv: Start-Service
#### saps, start: Start-Process
#### sujb: Suspend-Job
#### wjb: Wait-Job
#### ?, where: Where-Object
#### echo, write: Write-Output
----
### Common Aliases
#### gcm: Get-Command
#### foreach, %: Foreach-Object
#### sort: Sort-Object
#### where, ?: Where-Object
#### diff, compare: Compare-Object
#### dir, ls, gci: Get-ChildItem
#### gi: Get-Item
#### copy, cp, cpi: Copy-Item
#### move, mv, mi: Move-Item
#### del, rm: Remove-Item
#### rni, ren: Rename-Item
#### fFt: Format-Table
#### fl: Format-List
#### gcim: Get-CIMinstance
#### cat, gc, type: Get-Content
