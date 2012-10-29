class backup2l(
  $package_name  = $backup2l::params::package_name,
  $src_list      = $backup2l::params::src_list,
  $backup_dir    = $backup2l::params::backup_dir,
  $max_level     = $backup2l::params::max_level,
  $max_per_level = $backup2l::params::max_per_level,
  $pre_backup    = $backup2l::params::pre_backup,
  $post_backup   = $backup2l::params::post_backup
) inherits backup2l::params {

  class { 'backup2l::install':
    package_name  => $package_name,
    src_list      => $src_list,
    backup_dir    => $backup_dir,
    max_level     => $max_level,
    max_per_level => $max_per_level,
    pre_backup    => $pre_backup,
    post_backup   => $post_backup
  }
}
