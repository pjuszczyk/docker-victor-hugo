FROM node:10
MAINTAINER ptorj7@gmail.com

# update and upgrade libraries
RUN apt-get -qq update \
    && apt-get -qq upgrade \
	&& rm -rf /var/lib/apt/lists/ \
	&& apt-get -qq clean

# create working directory
RUN mkdir /usr/share/app
WORKDIR /usr/share/app
ADD ./app .

# install packages
RUN npm install

