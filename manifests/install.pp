class apelparser::install (
  $ensure = present) {
  package { 'apel-lib':
    ensure  => $ensure,
  }

  package { 'apel-parsers':
    ensure  => $ensure,
  }
}
