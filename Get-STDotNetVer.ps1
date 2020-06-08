# Get-STDotNetVer.ps1

<#
.Synopsis
    This script will output which versions of .net are installed on each server passed in
    as an argument.
#>

Get-STDotNetVersion -ComputerName server1 -PSRemoting
