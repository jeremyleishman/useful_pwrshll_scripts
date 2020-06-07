# Get-SQL.ps1

<#
.Synopsis
    Say you have a list of servers you need to pass into a cmdlet or function...
    This script will return the contents of your clipboard in a format like this:
    ('server1', 'server2', 'server3')
    #>

    Get-SQL (Get-Clipboard)
    