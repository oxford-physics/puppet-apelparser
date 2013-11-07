class apelparser::config (
  $mysql_hostname = $apelparser::params::mysql_hostname,
  $mysql_port     = $apelparser::params::mysql_port,
  $apel_database = $apelparser::params::apel_database,
  $apel_user     = $apelparser::params::apel_user,
  $apel_password = $apelparser::params::apel_password,
  $site_name      = $apelparser::params::site_name,
  $lrms_server    = $apelparser::params::lrms_server, )  {
  file { '/etc/apel/parser.cfg':
    owner   => "root",
    group   => "root",
    ensure  => "present",
    content => template("${module_name}/parser.cfg.erb"),
    require => Package['apel-parsers'],
  }
}
