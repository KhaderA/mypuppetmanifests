group { 'admin':
  ensure => present,
#  ensure => absent 
}

user { 'admin':
  ensure => present,
#  ensure => absent,
  groups  => "admin",
  password => '$1$I0MImYCJ$HlGDqJ91WJu/JlE.wDAxo/',
  home => "/home/admin",
  shell => "/bin/bash",
  managehome => true
}
