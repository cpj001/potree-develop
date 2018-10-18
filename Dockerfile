FROM node:carbon
MAINTAINER cpj
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

RUN cd /usr/src/app/
RUN npm install --save
RUN npm install -g gulp
RUN npm install -g rollup
CMD ["gulp", "watch"]
