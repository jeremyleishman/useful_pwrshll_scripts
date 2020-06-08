# Get-WinVer.ps1

<#
.Synopsis
    This script will return the Windows version of the specified computer
#>

Invoke-Command -ComputerName $using:fqdn -ScriptBlock {((Get-WmiObject -class Win32_OperatingSystem).Caption)}
