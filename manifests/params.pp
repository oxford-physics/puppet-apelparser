class apelparser::params {
 $setup_repo	= false
  $mysql_hostname = hiera ('apelparser::params::mysql_hostname', 'localhhost')
  $mysql_port     = hiera ('apelparser::params::mysql_port', '3306')
  $apel_database = hiera ('apelparser::params::apel_database', 'apelclient')
  $apel_user     = hiera ('apelparser::params::apel_user', 'apel')
  $apel_password = hiera ('apelparser::params::apel_password', undef)
  $site_name      = hiera ('apelparser::params::site_name', undef)
  # By default batch server is set to fqdn in erb template file
  $lrms_server     = hiera ('apelparser::params::lrms_server', 'fqdn')
}
