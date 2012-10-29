# puppet-backup2l

puppet-backup2l is a puppet module to create backups with the backup2l tool.

## How to use

```
  include backup2l
```

This will put backup2l into place with default settings:
  * `backup_dir    = /var/backups`
  * `src_list      = /etc /root /home /var/mail /usr/local`
  * `max_level     = 3`
  * `max_per_level = 8`
  * no `pre_backup`
  * no `post_backup`
