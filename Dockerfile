FROM chainmapper/walletbase-xenial
	
ENV WALLET_URL=https://github.com/avymantech/lobstex/releases/download/v2.0/linux.zip

RUN wget $WALLET_URL -O /tmp/wallet.zip \
	&& unzip /tmp/wallet.zip -d /usr/local/bin \
	&& chmod +x /usr/local/bin/*

#rpc port & main port
EXPOSE 15156 14146

RUN mkdir /data
ENV HOME /data

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
RUN chmod 777 /*.sh
CMD /start.sh lobstex.conf LOBS lobstexd