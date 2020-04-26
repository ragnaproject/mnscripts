#!/bin/bash
systemctl stop ragnarok
ragnarok-cli stop
cd /usr/local/bin
rm -r {ragnarok-cli,ragnarokd,ragnarok-tx}
wget https://github.com/ragnaproject/Ragnarok/releases/download/3.1.4/ragnarok-3.1.4-x86_64-linux-static.tar.gz
tar xvzf ragnarok-3.1.4-x86_64-linux-static.tar.gz
cd
cd .ragnarok/
rm -r {budget.dat,fee_estimates.dat,peers.dat,backups,chainstate,sporks,banlist.dat,db.log,mncache.dat,blocks,debug.log,mnpayments.dat,zerocoin}
wget https://github.com/ragnaproject/bootstrap/releases/download/3.1.4/bootstrap.tar.gz
tar xvzf bootstrap.tar.gz
cd
systemctl start ragnarok
watch ragnarok-cli getinfo
