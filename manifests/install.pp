class apelparser::install (
  $ensure = present) {
  package { 'apel-lib':
    ensure  => $ensure,
    require => [
  }

  package { 'apel-parsers':
    ensure  => $ensure,
    require => [
  }
}
