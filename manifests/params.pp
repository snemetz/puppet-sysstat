class sysstat::params {
  case $::osfamily {
    debian: {
      $conf_sysstat = '/etc/sysstat/sysstat'
      $sadc_options = '-S DISK'
    }

    redhat: {
      $conf_sysstat = '/etc/sysconfig/sysstat'
      if $::operatingsystemmajrelease == '5' {
        $sadc_options = ''
      } else {
        $sadc_options = '-S DISK'
      }
    }

    default: {
      fail("Unsupported OS family: ${::osfamily}")
    }
  }

  $enabled = true
  $packages = ['sysstat']
  $history = 7
  $compressafter = 10
  $sa1_options = $sadc_options
  $sa2_options = ''
}
