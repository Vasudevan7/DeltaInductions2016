#!/bin/bash
mkdir task
cd task
touch -d "2 days ago" file{1..100}
for i in {1..100}
do
dd if=/dev/urandom of=file$i bs=2b count=8
truncate -s 10k file$i
chmod 444 file$i
chattr +i file$i
done
