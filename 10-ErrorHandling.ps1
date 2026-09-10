try
{
    Get-Content ".\MissingFile.txt" -ErrorAction Stop
}
catch
{
    Write-Warning "File not found"
}
finally
{
    Write-Output "Script completed"
}
