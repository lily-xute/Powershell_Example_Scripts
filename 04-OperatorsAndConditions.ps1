$age = Read-Host "Enter age"

if ($age -ge 18)
{
    Write-Output "Adult"
}
else
{
    Write-Output "Minor"
}
