sudo -s
apt-get update
cp -f /distr/hosts /etc/hosts
dd if=/dev/zero of=/swapik bs=1M count=2048
mkswap /swapik
swapon /swapik
echo '/swapik non swap sw 0 0' >> /etc/fstab
mount -a
dpkg -i /distr/chef-server.deb
chef-server-ctl reconfigure
chef-server-ctl user-create admin Admin Adminych admin@dom.com "123qwe" --filename /share/admin.pem
chef-server-ctl org-create domcom "Domain Com" --filename /share/domcom.pem -a admin
mkdir ~/.chef
cp /distr/knife.rb ~/.chef
knife cookbook upload *
knife role from file "/distr/pgm.json"
knife role from file "/distr/pgs.json"
