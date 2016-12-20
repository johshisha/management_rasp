#connect wifi
sudo wpa_passphrase AirPort24928 $PASSWORD >> /etc/wpa_supplicant/wpa_supplicant.conf

#setup
sudo apt-get upgrade
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y nginx

#firewall
sudo ufw allow 80/tcp
sudo ufw deny 22
sudo ufw limit 51234
sudo ufw enable

#change log files to ramdisk
git clone https://github.com/johshisha/management_rasp_server ~/management
sudo mv management/conf/make-varlog-files /etc/init.d/make-varlog-files
sudo update-rc.d make-varlog-files defaults 01 10

#github
git config --global user.name 'johshisha'
git config --global user.email 'johshisha@gmail.com'

#pyenv
sudo apt-get install build-essential libncursesw5-dev libgdbm-dev libc6-dev zlib1g-dev libsqlite3-dev tk-dev libssl-dev openssl libbz2-dev libreadline-dev
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone git://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

#rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
mkdir -p ~/.rbenv/plugins
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build



