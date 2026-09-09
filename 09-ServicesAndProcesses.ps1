Write-Output "Running Services"

Get-Service |
    Where-Object Status -eq "Running" |
    Select-Object Name, Status

Write-Output ""
Write-Output "Top 5 Processes"

Get-Process |
    Sort-Object CPU -Descending |
    Select-Object -First 5 Name, CPU
