class backup2l::params {
    case $::operatingsystem {
        'ubuntu', 'debian': {
            $package_name  = 'backup2l'
            $src_list      = ['/etc', '/root', '/home', '/var/mail', '/usr/local']
            $backup_dir    = '/var/backups'
            $max_level     = 3
            $max_per_level = 8
            $pre_backup    = []
            $post_backup   = []
        }
    }
}
