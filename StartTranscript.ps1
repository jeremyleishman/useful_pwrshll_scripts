# StartTranscript.ps1

<#
.Synopsis
    This script will start a transcript of your ps session in a location of
    your choosing.  Use the -append at the end to keep adding to the transcript.

    Use the Stop-Transcript cmdlet to close this out.
#>

Start-Transcript -Path C:\temp\pstranscript.txt -append
