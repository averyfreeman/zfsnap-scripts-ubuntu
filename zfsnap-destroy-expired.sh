#!/bin/dash
zfsnap destroy -rv -p 'daily-' bpool/BOOT
zfsnap destroy -rv -p 'daily-' rpool/ROOT
zfsnap destroy -rv -p 'daily-' rpool/USERDATA
zfsnap destroy -rv -p 'hourly-' rpool/USERDATA