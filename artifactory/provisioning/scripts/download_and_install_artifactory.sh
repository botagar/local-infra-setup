echo "deb https://jfrog.bintray.com/artifactory-debs xenial main" | sudo tee -a /etc/apt/sources.list
curl https://bintray.com/user/downloadSubjectPublicKey?username=jfrog | sudo apt-key add -

apt-get update
apt-get install -y jfrog-artifactory-cpp-ce

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password'
apt-get install -y mysql-server

# /opt/jfrog/artifactory/bin/configure.mysql.sh
# systemctl start artifactory.service
# systemctl status artifactory.service
