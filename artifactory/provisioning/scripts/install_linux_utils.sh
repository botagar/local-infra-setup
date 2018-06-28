apt-get update
apt-get install -y apt-transport-https ca-certificates tree wget curl git openssh-server htop libxss1 python default-jre default-jdk
echo 'JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"' >> /etc/environment
source /etc/environment
