function Show-Greeting
{
    param(
        [string]$Name
    )

    Write-Output "Hello $Name"
}

Show-Greeting -Name "Lily"
