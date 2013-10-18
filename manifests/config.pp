class apelparser::config (
  $mysql_hostname = $apelparser::params::mysql_hostname,
  $mysql_port     = $apelparser::params::mysql_port,
  $mysql_database = $apelparser::params::mysql_database,
  $mysql_user     = $apelparser::params::mysql_user,
  $mysql_password = $apelparser::params::mysql_password,
  $site_name      = $apelparser::params::site_name, ) {
  file { '/etc/apel/parser.cfg':
    owner   => "root",
    group   => "root",
    ensure  => "present",
    content => template("${module_name}/parser.cfg.erb"),
    require => Package['apel-parsers'],
  }
}
