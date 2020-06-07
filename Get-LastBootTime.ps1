# Get-LastBootTime.ps1

<#
.Synopsis
    This script will get the last boot time of the local machine it is run on
    #>

    Get-WmiObject -Class Win32_OperatingSystem -ComputerName localhost | Select-Object -Property CSname,@{n="Last Booted"; e-{[ManagementDateTimeConverter]::ToDateTime($_.LastBootUpTime)}}
    