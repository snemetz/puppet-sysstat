class sysstat::config (
  $enabled,
  $history,
  $compressafter,
  $sadc_options,
  $sa1_options,
  $sa2_options,
  $zip_program,
  $conf_sysstat
) {
  file { $conf_sysstat:
    ensure  => file,
    content => template('sysstat/sysstat.erb'),
  }

  if $::osfamily == 'Debian' {
    augeas { '/etc/default/sysstat':
      incl    => '/etc/default/sysstat',
      lens    => 'Shellvars.lns',
      context => '/files/etc/default/sysstat/',
      changes => [
        "set ENABLED     '\"${enabled}\"'",
        "set SA1_OPTIONS '\"${sa1_options}\"'",
        "set SA2_OPTIONS '\"${sa2_options}\"'", ],
    }
  }
}
