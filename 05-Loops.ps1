# For loop

for ($i = 1; $i -le 5; $i++)
{
    Write-Output "Number: $i"
}

# Foreach loop

$servers = @(
    "Server1"
    "Server2"
    "Server3"
)

foreach ($server in $servers)
{
    Write-Output $server
}
