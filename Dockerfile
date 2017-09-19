FROM ubuntu
MAINTAINER S Sriram <info@sri-systems.com>

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get -y install nodejs
RUN apt-get -y install build-essential

RUN apt-get -y install nodejs
RUN apt-get -y install npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g kinesalite

EXPOSE 5000

ENTRYPOINT ["/usr/bin/kinesalite"]
