$folder = ".\Demo"

New-Item -Path $folder -ItemType Directory -Force

Set-Content `
    -Path ".\Demo\Example.txt" `
    -Value "Hello PowerShell"

Get-Content ".\Demo\Example.txt"
