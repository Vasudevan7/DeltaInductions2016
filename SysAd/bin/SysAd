#!/bin/bash
mkdir task
cd task
touch -d "2 days ago" file{1..100}.txt
for i in task/*.txt
do
dd if=/dev/random of=file$i bs=2b count=1
truncate -s 10k file$i
chmod 444 file$i
done
