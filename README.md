# scripts with examples of zfsnap usage

Written on Ubuntu 19.10 Desktop ZFS filesystem w/ default installer dataset layout 

Scripts should work without much fuss on similar ZFS default installation (the layout you get when you are in the graphical installer and choose "ZFS" as filesystem)

Scripts include:

* bpool/BOOT configured for daily + 1w TTL
* rpool/ROOT configured for daily + 30d TTL
* rpool/USERDATA configured for daily + 60d TTL
* rpool/USERDATA configured for hourly + 3d TTL
-* zfsnap destroy daily recursive at TTL expiry
--* All will output verbose data to /var/log/zfsnap/zfsnap.log

-* zfsnap-destroy...sh scripts will only destroy zfsnap snapshots (not manually created snapshots)

Also includes example of crontab -e

* Setup: 

Install zfsnap to /usr/local{sbin,share}

Then for scripts --

````
sudo su

git clone https://github.com/averyfreeman/zfsnap-scripts-ubuntu-19.10 /usr/local/zfs-snap-scripts

mkdir -p /var/log/zfsnap && touch /var/log/zfsnap/zfsnap.log

cat /usr/local/zfsnap-scripts/crontab-examples.txt >> /var/spool/cron/crontabs/root

exit

````

