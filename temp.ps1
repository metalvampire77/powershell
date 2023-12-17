$name = "ravindra"
[int]$age = read-host "enter age"
write-host($age,$name)
if($age -le 23){
    write-host "age is less than or equal to 23"
}
else{
    write-host "age is greater than 23"
}

# for($i = 1; $i -le $age; $i++){
#     write-host "$i"
# }

# while($age -gt 0){
#     write-host "$age"
#     $age--
# }

$list = {"apple","tomato"}

foreach($item in $list){
    write-host "$item"
}