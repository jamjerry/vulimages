#! /bin/bash
useradd -c 'Admin User' -d /home/security -m -s /bin/bash security
password=security
echo -e '$password\n$password' | passwd security
su security -c "mkdir flag && echo "flag:{Y0uR_fLaG_!s_H3rE}">flag.txt
chmod -R 7000 /home/security/flag

setfacl -m u:www-data:--- /bin/dd
setfacl -m u:www-data:--- /usr/bin/curl
setfacl -m u:www-data:--- /bin/rm
setfacl -m u:www-data:--- /bin/echo
setfacl -m u:www-data:--- /bin/mv
setfacl -m u:www-data:--- /usr/bin/tail
setfacl -m u:www-data:--- /usr/bin/head
setfacl -m u:www-data:--- /usr/bin/git
setfacl -m u:www-data:--- /usr/bin/wget
setfacl -m u:www-data:--- /usr/bin/locate
setfacl -m u:www-data:--- /usr/bin/find
setfacl -m u:www-data:--- /usr/bin/apt
setfacl -m u:www-data:--- /usr/bin/scp
setfacl -m u:www-data:--- /usr/local/bin/pip
setfacl -m u:www-data:--- /usr/bin/nl
setfacl -m u:www-data:--- /sbin/ip
setfacl -m u:www-data:--- /bin/hostname
setfacl -m u:www-data:--- /bin/rmdir
setfacl -m u:www-data:--- /usr/bin/dpkg
setfacl -m u:www-data:--- /bin/cat
setfacl -m u:www-data:--- /usr/bin/setfacl
setfacl -m u:www-data:--- /usr/bin/apt-get
setfacl -m u:www-data:--- /usr/bin/unlink
setfacl -m u:www-data:--- /bin/cp
setfacl -m u:security:--- /bin/dd
setfacl -m u:security:--- /bin/more
setfacl -m u:security:--- /usr/bin/curl
setfacl -m u:security:--- /bin/rm
setfacl -m u:security:--- /bin/echo
setfacl -m u:security:--- /bin/mv
setfacl -m u:security:--- /usr/bin/tail
setfacl -m u:security:--- /usr/bin/head
setfacl -m u:security:--- /usr/bin/git
setfacl -m u:security:--- /usr/bin/wget
setfacl -m u:security:--- /usr/bin/locate
setfacl -m u:security:--- /usr/bin/find
setfacl -m u:security:--- /usr/bin/apt
setfacl -m u:security:--- /usr/bin/scp
setfacl -m u:security:--- /usr/local/bin/pip
setfacl -m u:security:--- /usr/bin/nl
setfacl -m u:security:--- /sbin/ip
setfacl -m u:security:--- /bin/hostname
setfacl -m u:security:--- /bin/rmdir
setfacl -m u:security:--- /usr/bin/dpkg
setfacl -m u:security:--- /bin/cat
setfacl -m u:security:--- /usr/bin/setfacl
setfacl -m u:security:--- /usr/bin/apt-get
setfacl -m u:security:--- /usr/bin/unlink
setfacl -m u:security:--- /bin/cp
setfacl -m u:www-data:--- /bin/more
