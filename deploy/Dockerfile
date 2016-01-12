FROM ubuntu:14.04
MAINTAINER Joshua Richard <eos.josh.richard@gmail.com>

RUN apt-get update && \
    apt-get install -y \
    git \
    nodejs \
    npm

RUN npm install -g grunt-cli

RUN ln -s /usr/bin/nodejs /usr/local/bin/node

RUN git clone https://www.github.com/joshuarichard/amgg.git /var/tmp/amgg

RUN mkdir -p /var/tmp/amgg/var/log

RUN cd /var/tmp/amgg && npm install

COPY run.sh /var/tmp/amgg
RUN chmod +x /var/tmp/amgg/run.sh

EXPOSE 3000

CMD ["/var/tmp/amgg/run.sh"]
