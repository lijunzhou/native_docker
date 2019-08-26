FROM centos
ENV PATH=$PATH:/nuls
#ADD http://nuls-usa-west.oss-us-west-1.aliyuncs.com/beta3/NULS_Wallet_beta3-main-linux.tar.gz ./
#ADD https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-rhel62-3.2.7.tgz ./mongo.tgz
COPY mongo.tgz /
COPY install_mongodb.sh /
COPY start.sh /start
COPY NULS_WALLET /nuls

RUN  cd / \
     && ./install_mongodb.sh \
     && rm install_mongodb.sh \
     && mv /nuls/start /nuls/start-nuls \
     && mv /start-mongodb.sh /nuls/ \
     && mv /start /nuls/ \
	 && yum -y install kde-l10n-Chinese && yum -y reinstall glibc-common \
	 && localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 

ENV LC_ALL=zh_CN.utf8

WORKDIR /nuls

CMD ["./start"]

RUN echo "successfully build nuls image"
