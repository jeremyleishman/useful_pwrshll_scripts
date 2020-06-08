# Get-DriveState.ps1

<#
.Synopsis
    This script will return the state & info of drives on a specified computer
#>

Invoke-Command -ComputerName server1 -argumentlist (ft -a) -ScriptBlock
{Get-PhysicalDisk | Where-Object {$_.OperationalStatus -ne "OK"} |
select-object DeviceID,FriendlyName,SerialNumber,MediaType,OperationalStatus,HealthStatus,SlotNumber}
