#Some useful powershell scripts

## HashOff
This script gets the list of paths from the csv and generates the hash for the all files, then groups them based on the hash

eg: If comparing same files on 2 servers then the command must return count as 2 for the all the files, if not it means the files differ. 

### Usage

`hashoff <server list csv> <count less than>`

eg:

`hasoff us.csv 2`

this is how the output looks like, for the case when hash is different on server 1 and server 2

|Count |Name                      |Group
|----- |----                      |-----
|    1 |F4BF9F7FCBEDABA0392F10... |{@{Hash=F4BF9F7FCBEDABA0392F108C59D8F4A38B3838EFB64877380171B54475C2ADE8;  $server =server1; Path=C:\sample1\f2.txt}}
|    1 |D4735E3A265E16EEE03F59... |{@{Hash=D4735E3A265E16EEE03F59718B9B5D03019C07D8B6C51F90DA3A666EEC13AB35;  $server =server2; Path=C:\sample2\f2.txt}}