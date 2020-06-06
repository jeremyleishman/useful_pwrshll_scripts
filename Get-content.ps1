# Get-content.ps1

<#
.Synopsis
    This script will take a list of servers from specified folder & txt file and run
    the test-connection cmdlet against each server, then export the output to a csv
    to the specified location#>

Get-Content -Path C:\Users\me\servers.txt | ForEach-Object {[PScustomObject]@ComputerName = $PSItem}} | Test-Connection | Export-csv -Path C:\Users\me\temp\exported_list.csv
