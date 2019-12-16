FROM chainmapper/walletbase-bionic
	
ENV WALLET_URL=https://github.com/avymantech/lobstex/releases/download/v2.4.0/Lobstex-2.4.0-aarch64-linux-gnu.zip

RUN wget $WALLET_URL -O /tmp/wallet.zip \
	&& unzip /tmp/wallet.zip -d /usr/local/bin \
	&& chmod +x /usr/local/bin/*

#rpc port & main port & zmqport
EXPOSE 6666 14146 5555

RUN mkdir /data
ENV HOME /data

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
COPY wallet.sh /wallet.sh
RUN chmod 777 /*.sh
CMD /start.sh lobstex.conf LOBS lobstexd