$data = {"rtr" => "Router", "svr" => "Server", "wks" => "Workstation"}
$data.each |$items| {
 notify { $items[0]:
   message => $items[1]
 }
}


## In this each example, the variable data is holding hash(key/value) data. And only one parameter is used to iterate the values of $data.
## So, the lamba function $item will store every value of $data as an array something like $item[0] stores all the keys and $item[1] stores
## all the values
