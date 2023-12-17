function square{
    param(
        [parameter(mandatory=$true,position=0)]
        [validatescript({$_ -ge 0})]
        [int]$num
    )

    process{
        return $num * $num
    }
}

square 2