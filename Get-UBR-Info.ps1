# Get-UBR-Info.ps1

# This will loop through provided list and return an output to the screen
# listing each server in the specified list with its corresponding UBR

$list = gc -Path C:\Users\v-jerl\Desktop\List.txt

Invoke-Command -ScriptBlock {Get-ItemProperty
'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' `
| select PSComputerName,CurrentBuildNumber,UBR} -ComputerName $list | Sort
PSComputerName,CurrentBuildNumber,UBR | Export-Csv \\computer1\Users\Me\Desktop\UBRList.csv

Write-Output "Script Completed"
