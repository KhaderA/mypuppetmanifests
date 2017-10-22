$data = {"rtr" => "Router", "svr" => "Server", "wks" => "Workstation"}
$data.each |$items| {
 notify { $items[0]:
   message => $items[1]
 }
}
