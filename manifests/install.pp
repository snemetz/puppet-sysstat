class sysstat::install (
  $packages
) {
  package { $packages:
    ensure => installed,
  }
}
