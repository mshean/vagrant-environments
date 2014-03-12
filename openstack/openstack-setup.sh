sudo yum -y install http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo yum -y install http://rdo.fedorapeople.org/rdo-release.rpm
sudo yum -y install openstack-packstack expect

expect << EOF
set timeout -1
spawn "/usr/bin/packstack" "--allinone"
expect "Setting up ssh keys...root@10.0.2.15's password:"
send "vagrant\n"
expect eof
EOF