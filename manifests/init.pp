class sysstat (
  $enabled       = $sysstat::params::enabled,
  $packages      = $sysstat::params::packages,
  $history       = $sysstat::params::history,
  $compressafter = $sysstat::params::compressafter,
  $sadc_options  = $sysstat::params::sadc_options,
  $sa1_options   = $sysstat::params::sa1_options,
  $sa2_options   = $sysstat::params::sa2_options,
  $conf_sysstat  = $sysstat::params::conf_systat,
) inherits sysstat::params {

  class { 'sysstat::install':
    packages => $packages,
  }

  class { 'sysstat::config':
    enabled       => $enabled,
    history       => $history,
    compressafter => $compressafter,
    sadc_options  => $sadc_options,
    sa1_options   => $sa1_options,
    sa2_options   => $sa2_options,
    conf_sysstat  => $conf_sysstat,
  }

  anchor { 'sysstat::begin': ; }
    -> Class['sysstat::install']
    -> Class['sysstat::config']
    -> anchor { 'sysstat::end': ; }
}
