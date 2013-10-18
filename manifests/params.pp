class apelparser::params {
 $setup_repo	= false
  $mysql_hostname = hiera ('apelparser::params::mysql_hostname', 'localhhost')
  $mysql_port     = hiera ('apelparser::params::mysql_port', '3306')
  $mysql_database = hiera ('apelparser::params::mysql_database', 'apelclient')
  $mysql_user     = hiera ('apelparser::params::mysql_user', 'apel')
  $mysql_password = hiera ('apelparser::params::mysql_password', undef)
  $site_name      = hiera ('apelparser::params::site_name', undef)
}
