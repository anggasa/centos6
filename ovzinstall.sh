echo ' '
echo "  


\ \ /\ / /0RM
 \ V  V / 
  \_/\_/
                     
 "

echo " Script Auto Install VPS Untuk Server SSH "
echo " ================ Loading 100% ====================="

wget https://raw.githubusercontent.com/anggasa/centos6/master/autoinstall.sh && sh autoinstall.sh && wget https://raw.githubusercontent.com/anggasa/worm/master/banner && chmod +x banner && wget https://raw.githubusercontent.com/anggasa/centos6/master/badvpna.sh && sh badvpna.sh && yum -y install squid && sed -i 's/#cache_dir/cache_dir/g' /etc/squid/squid.conf && wget https://raw.githubusercontent.com/anggasa/centos6/master/squid.conf && cp --force squid.conf /etc/squid/squid.conf && squid -f /etc/squid/squid.conf -z && squid -f /etc/squid/squid.conf -z && chkconfig squid on && service squid stop && service sshd restart && service dropbear restart && wget https://raw.githubusercontent.com/anggasa/centos6/master/login && wget https://raw.githubusercontent.com/anggasa/centos6/master/test.py && yum -y install figlet && yum -y install vixie-cron && chkconfig crond on && service crond restart && wget https://raw.githubusercontent.com/anggasa/centos6/master/autoexpire.sh && chmod +x autoexpire.sh && wget https://raw.githubusercontent.com/anggasa/centos6/master/ssh && sh ssh && chkconfig crond on && wget https://raw.githubusercontent.com/anggasa/centos6/master/refresh &&

yum -y install httpd && rm /etc/httpd/conf/httpd.conf && cd /etc/httpd/conf && wget https://raw.githubusercontent.com/anggasa/centos6/master/httpd.conf && cd && service httpd restart && chkconfig httpd on && cd /var/www/html && wget https://raw.githubusercontent.com/anggasa/centos6/master/index.html && cd
