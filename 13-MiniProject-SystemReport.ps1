Write-Output "=== System Report ==="

$computerName = $env:COMPUTERNAME

Write-Output "Computer: $computerName"

$processes =
    Get-Process |
    Sort-Object CPU -Descending |
    Select-Object -First 5

$processes

$services =
    Get-Service |
    Where-Object Status -eq "Running"

Write-Output ""
Write-Output "Running Services: $($services.Count)"

$report =
@"
Computer: $computerName
Processes Checked: $($processes.Count)
Running Services: $($services.Count)
"@

$report |
    Set-Content ".\SystemReport.txt"

Write-Output "Report Saved"
