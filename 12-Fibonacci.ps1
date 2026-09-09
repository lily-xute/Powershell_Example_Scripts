function Get-Fibonacci
{
    param(
        [int]$Number
    )

    if ($Number -le 1)
    {
        return $Number
    }

    return (Get-Fibonacci ($Number - 1)) +
           (Get-Fibonacci ($Number - 2))
}

for ($i = 0; $i -lt 10; $i++)
{
    Get-Fibonacci $i
}
