FROM centos
ENV PATH=$PATH:/nuls
COPY NULS_WALLET /nuls
RUN echo "tail -f /dev/null" >> /nuls/start \
	&& rm -rf /tmp/* \
	&& yum -y install kde-l10n-Chinese && yum -y reinstall glibc-common \
	&& localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 

ENV LC_ALL=zh_CN.utf8

WORKDIR /nuls

CMD ["./start"]

RUN echo "successfully build nuls image"