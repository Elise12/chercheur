echo '[!] Обновление...'
apt-get update > install.log
echo
echo '[!] Установка зависимостей...'
echo '    Python3'
apt-get -y install python &>> install.log
echo '    PHP'
apt-get -y install php &>> install.log
echo '    ssh'
apt-get -y install openssh &>> install.log
echo '    Requests'
pip3 install requests &>> install.log
echo
echo '[!] Установка разрешений...'
chmod 777 template/nearyou/php/info.txt
chmod 777 template/nearyou/php/result.txt
echo
echo '[!] Установлено.'