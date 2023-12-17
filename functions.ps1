function add{
    param(
        [int]$x,[int]$y
    )
    return $($x+$y)
}

add 5 5
# $result = add -x 5 -y 5
# write-host "add returned $result"