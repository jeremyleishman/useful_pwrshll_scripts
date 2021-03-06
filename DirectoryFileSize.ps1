# DirectoryFileSize.ps1

function Get-FolderSize {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory=$true,ValueFromPipeline=$true)]
        $Path,
        [ValidateSet("KB","MB","GB")]
        $Units = "GB"
    )
     if ( (Test-Path) -and (Get-Item $Path).PSIsContainer ) {
         $Measure = Get-ChildItem $Path -Recurse -Force -ErrorAction
    SilentlyContinue | Measure-Object -Property Length -Sum
        $Sum = $Measure.Sum / "1$Units"
        [PSCustomObject]@{
            "Path" = $Path
            "Size($Units)" = $Sum
        }
     }
}
