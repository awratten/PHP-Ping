echo "enter new subdomain"

read varsub

mkdir /var/www/html/$varsub
echo "Made new Ditectory : /var/www/html/$varsub"

sudo echo "64.137.184.57 $varsub.mapperty.co" >> /etc/hosts
echo "Added new entry to Hosts file"


sudo echo "" >> /etc/apache2/apache2.conf
sudo echo "# Automatically added by script" >> /etc/apache2/apache2.conf
sudo echo "<VirtualHost *:80>" >> /etc/apache2/apache2.conf
sudo echo "	DocumentRoot /var/www/html/$varsub/" >> /etc/apache2/apache2.conf
sudo echo "	ServerName $varsub.mapperty.co" >> /etc/apache2/apache2.conf
sudo echo "</VirtualHost>" >> /etc/apache2/apache2.conf

echo "added new virtual host to apache2.conf"

sudo service apache2 restart

echo "All done making $varsub.mapperty.co"

