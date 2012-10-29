class backup2l::install(
  $backup_dir    = $backup2l::params::backup_dir,
  $package_name  = $backup2l::params::package_name,
  $src_list      = $backup2l::params::src_list,
  $max_level     = $backup2l::params::max_level,
  $max_per_level = $backup2l::params::max_per_level,
  $pre_backup    = $backup2l::params::pre_backup,
  $post_backup   = $backup2l::params::post_backup
) {
  package { $backup2l::params::package_name:
    ensure => present,
  }

  file { '/etc/backup2l.conf':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0744',
    content => template('backup2l/backup2l.conf.erb'),
    require => Package[$backup2l::params::package_name],
  }
}
