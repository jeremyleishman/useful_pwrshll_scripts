# Test-Connection.ps1

<#
.Synopsis
    This will ping (IPV4 & 6) each server from your clipboard and export it
    to a csv file in a location of your choosing.
#>

Test-Connection (Get-Clipboard) | Export-Csv C:\temp\spreadsheet.csv
