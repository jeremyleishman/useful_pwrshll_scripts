# Sql-query.ps1

<#
    .Synopsis
    This script will query a sql database of your choosing.
    Use sql commands
#>

Invoke-Sqlcmd -ServerInstance server1 -Query "SELECT * FROM sqldb.dbo.table1 WHERE Column1 LIKE ('%attribute%')"
