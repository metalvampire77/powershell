# get services
get-service

#get running services
get-service | where-object {$_.status -eq "running"} #use "stopped" for stopped process

# start a service
start-service -name "service name"

# stop a service
stop-service -name "service name"

# restart a service
restart-service -name "service name"

# get the properties of a object
get-service -name "service name" | get-member -membertype properties

# setting start up types

# view the default startType of a service
get-service -name "service name" | select-object -expandproperty starttype
    #alternative
    $result = get-service -name "service name"
    $result.starttype

# set the startuptype as automatic
$result = get-service -name "service name"
set-service -inputobject $result -startuptype automatic

# set the startuptype as manual
set-service -inputobject $result -startuptype manual

# set the startuptype as disabled
set-service -inputobject $result -startuptype disabled
