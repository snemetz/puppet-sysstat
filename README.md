# Puppet Sysstat module

This module installs and configures Sysstat.

### Requirements

Module has been tested on:

* Puppet 3.1
* Debian 6/7 and RHEL/CentOS 5/6

Required modules:

* stdlib (https://github.com/puppetlabs/puppetlabs-stdlib)

# Quick Start

Setup client

```puppet
include sysstat
```

Full configuration options:

```puppet
class { 'sysstat':
  enabled       => false|true,            # enable service
  packages      => [...],                 # list of packages to install
  conf_sysstat  => '...',                 # main sysstat config. file
  history       => 7,                     # statistics history in days
  compressafter => 10,                    # compress old stats after days
  sadc_options  => '-S DISK',             # sysstat options
  sa1_options   => '-S DISK',
  sa2_options   => '',
}
```

***

CERIT Scientific Cloud, <support@cerit-sc.cz>
