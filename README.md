# Scripts for simple zfsnap implementation on Ubuntu Desktop >= 19.10 (default zfs-root config) 

References Ubuntu 19.10+ Desktop ZFS filesystem w/ default installer dataset layout 

Scripts should work without much fuss on similar ZFS default installation (the layout you get when you are in the graphical installer and choose "ZFS" as filesystem)

Tested with zfsnap v2.0.0-beta3

Scripts include:

* `bpool/BOOT` configured for daily + 1w TTL
* `rpool/ROOT` configured for daily + 30d TTL
* `rpool/USERDATA` configured for daily + 60d TTL
* `rpool/USERDATA` configured for hourly + 3d TTL
 * zfsnap destroy daily all recursive at TTL expiry
- * All will output verbose data to /var/log/zfsnap/zfsnap.log

* `zfsnap-destroy...sh` scripts to manually destroy zfsnap snapshots immediately if desired (will not destroy manually created snapshots)

*Note: Scripts are easy to modify for different snapshot frequencies and lifespans, or to work better in another environment*

Also includes example of crontab -e

|Setup: 

Install zfsnap to `/usr/local{sbin,share}` from https://github.com/zfsnap/zfsnap/releases

Or install maintainer's version

````
sudo apt update && sudo apt install zfsnap
````

Then for scripts --

````
sudo su

git clone https://github.com/averyfreeman/zfsnap-scripts-ubuntu-19.10 /usr/local/zfssnap-scripts

mkdir -p /var/log/zfsnap && touch /var/log/zfsnap/zfsnap.log

cat /usr/local/zfsnap-scripts/crontab-examples.txt >> /var/spool/cron/crontabs/root

exit

````

More info about zfsnap at https://www.zfsnap.org/

