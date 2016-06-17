# Puppet Sysstat module

[![Build Status](https://travis-ci.org/snemetz/puppet-sysstat.png)](https://travis-ci.org/snemetz/puppet-sysstat)

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
  history       => 28,                     # statistics history in days
  compressafter => 10,                    # compress old stats after days
  sadc_options  => '-S DISK',             # sysstat options
  sa1_options   => '-S DISK',
  sa2_options   => '',
  zip_program   => 'bzip2',               # Zip program to use
}
```

***

CERIT Scientific Cloud, <support@cerit-sc.cz>
