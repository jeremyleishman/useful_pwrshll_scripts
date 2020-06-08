# Get-SmbShareAccess.ps1

<#
.Synopsis
    This script will return the following info about the specified SMB Share on the specified
    computer and present it in a gridview:
    Name, accountname, accessright

    You can also export to a csv file to a specified location instead of out-gridview
#>

Invoke-Command -ScriptBlock {(Get-SmbShareAccess 'share_name')} -ComputerName server1 | Select name,accountname,accessright | Out-Gridview
