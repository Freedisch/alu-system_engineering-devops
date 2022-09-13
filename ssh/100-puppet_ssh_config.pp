#Puppet is config file for ssh files
class { 'ssh':
  storeconfigs_enabled => false,
  server_options => {
    'Match User www-data' => {
      'ChrootDirectory' => '%h',
      'ForceCommand' => 'internal-sftp',
      'PasswordAuthentication' => 'no',
      'IdentityFile' => '~/.ssh/school',
      'AllowTcpForwarding' => 'no',
      'X11Forwarding' => 'no',
    },
    'Port' => [22, 2222, 2288],
  },
