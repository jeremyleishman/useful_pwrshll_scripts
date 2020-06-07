# Get-SMBShare.ps1

<#
.Synopsis
    This script will return the following info about the specified SMB Share:
    Name, ScopeName, Path & Description

    Example: Get-SMBShare SharedFolder

    You can also export to a csv file to a specified location like this:
    Get-SMBShare SharedFolder | Export-CSV C:\temp\spreadsheet.csv
#>

Get-SMBShare <ShareName>
