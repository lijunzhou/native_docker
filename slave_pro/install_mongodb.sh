#!/bin/bash
mv /mongo.tgz /usr/local
cd /usr/local
tar -xvf mongo.tgz
rm -f mongo.tgz
mv ./mongodb-linux-x86_64-rhel62-3.2.7 ./mongodb
echo `/usr/local/mongodb/bin/mongod -v`
mkdir -p /nuls/mongo_data
mkdir -p /nuls/mongo_log
touch /nuls/mongo_log/mongodb.log
touch /etc/mongodb.conf
echo "dbpath=/nuls/mongo_data" >> /etc/mongodb.conf
echo "logpath=/nuls/mongo_log/mongodb.log" >> /etc/mongodb.conf
echo "logappend=true" >> /etc/mongodb.conf
echo "port=27017" >> /etc/mongodb.conf
echo "fork=true" >> /etc/mongodb.conf
echo '#/bin/bash' >> /start-mongodb.sh
echo '/usr/local/mongodb/bin/mongod -f /etc/mongodb.conf' >> /start-mongodb.sh
chmod +x /start-mongodb.sh