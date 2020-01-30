#!/bin/dash
/usr/local/sbin/zfsnap destroy -rv -p 'daily-' bpool/BOOT
/usr/local/sbin/zfsnap destroy -rv -p 'daily-' rpool/ROOT
/usr/local/sbin/zfsnap destroy -rv -p 'daily-' rpool/USERDATA
/usr/local/sbin/zfsnap destroy -rv -p 'hourly-' rpool/USERDATA