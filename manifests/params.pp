class sysstat::params {
  $enabled = true
  $packages = ['sysstat']
  $history = 7
  $compressafter = 10
  $sadc_options = '-S DISK'
  $sa1_options = $sadc_options
  $sa2_options = ''

  case $::osfamily {
    debian:  { $conf_sysstat = '/etc/sysstat/sysstat' }
    redhat:  { $conf_sysstat = '/etc/sysconfig/sysstat' }
    default: { fail("Unsupported OS family: ${::osfamily}") }
  }
}
