param([string]$serverListCsv = "us.csv", [string]$countLessThan = 2)
Import-csv $serverlist | 
Foreach-Object { 
    $server = $_.server
    Get-ChildItem -Recurse $_.path |
    Get-FileHash | 
    Select-Object Hash, 
    { $server }, 
    @{ Name = "Path"; Expression = { $_.Path } }    
}|
Group-Object -Property Hash |
Where-Object {$_.count -lt $countLessThan} |
Format-Table -Wrap
