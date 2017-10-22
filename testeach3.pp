$employee={
  "100" => "BillGates",
  "101" => "WarrenBuffet",
  "103" => "Zuckerberg",
  "104" => "SteveJobs",
}

# here lamda function has 2 parameters $i & $j, and the variable $employee is a hash data. So puppet assigns value to lamda parameters like $i as key and $j as value
$employee.each |$i,$j| {
  notify { $i:
  message => $j
  }
}
