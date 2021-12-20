Obtener el archivo de Instalación:
#Entrar a github y generar el token en el directorio. Porque es un repositorio >
#Ejemplo:

# wget https://raw.githubusercontent.com/devops-mascotas-vet/mascotas.vet/maste>

echo "Instalación personalizada para:"

Var=$(lsb_release -d)
echo "$Var"
export LC_ALL=C.UTF-8
apt update
apt upgrade
fallocate -l 2G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
swapon --show
apt-get install curl git
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh
#./install.sh
apt-get install software-properties-common
apt install -y nodejs mariadb-server redis-server nginx
apt install python3-testresources python3-distutils python3-setuptools python3->
apt install libssl-dev wkhtmltopdf
#apt-get install libmysqlclient-dev
apt-get libmariadb-dev
adduser erpvet
usermod -aG sudo erpvet
echo "[mysqld]" >>  /etc/mysql/my.cnf
echo "character-set-client-handshake = FALSE" >>  /etc/mysql/my.cnf
echo "character-set-server = utf8mb4" >>  /etc/mysql/my.cnf
echo "collation-server = utf8mb4_unicode_ci" >>  /etc/mysql/my.cnf
echo "[mysql]" >>  /etc/mysql/my.cnf
echo "default-character-set = utf8mb4" >>  /etc/mysql/my.cnf
service mysql restart
mysql_secure_installation
npm install -g yarn
pip3 install frappe-bench

