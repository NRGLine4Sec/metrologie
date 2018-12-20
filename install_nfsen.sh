apt-get update && apt-get upgrade -y
apt-get install php7.0 apache2 libapache2-mod-php7.0 php7.0-common libmailtools-perl rrdtool librrds-perl libsocket6-perl nfdump nfdump-flow-tools perl6 -y
cd /usr/local/src/
wget --no-check-certificate https://downloads.sourceforge.net/project/nfsen/stable/nfsen-1.3.8/nfsen-1.3.8.tar.gz
tar -xf nfsen-1.3.8.tar.gz
cd nfsen-1.3.8
cp etc/nfsen-dist.conf etc/nfsen.conf
useradd -m nfsen
passwd nfsen
groupadd nfsen
usermod -G nfsen nfsen
groupadd nfsenadmin
usermod -a -G nfsenadmin nfsen
usermod -a -G nfsenadmin www-data
mkdir -p /var/www/html/nfsen
chown -R nfsen:nfsenadmin /var/www/html/nfsen

echo '$USER = "www-data";
$WWWUSER = "www-data";
$WWWGROUP = "www-data";' > /etc/nfsen.conf
echo "%sources = ( 'ROUTER1' => { 'port' => '3333', 'col' => '#0000ff', 'type' => 'netflow' }, );" >> /etc/nfsen.conf
