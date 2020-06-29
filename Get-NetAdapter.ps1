# Get-NetAdapter.ps1

# this script will return the installed net adapters on a server if they are working

Get-NetAdapter -Physical | ? {$_.Status -eq 'UP'}
