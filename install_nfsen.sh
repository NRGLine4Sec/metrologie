apt-get update && apt-get upgrade -y
apt-get install php7.0 apache2 libapache2-mod-php7.0 php.10-common libmailtools-perl rrdtool librrds-perl nfdump nfdump-flow-tools perls6 -y
cd /usr/local/src/
wget https://downloads.sourceforge.net/project/nfsen/stable/nfsen-1.3.8/nfsen-1.3.8.tar.gz
tar -xf nfsen-1.3.8.tar.gz
cd nfsen-1.3.8
cp /etc/nfsen-dist.conf /et/nfsen.conf
