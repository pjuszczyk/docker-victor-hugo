FROM node:9
MAINTAINER ptorj7@gmail.com

# update and upgrade libraries
RUN apt-get -qq update \
    && apt-get -qq upgrade \
	&& rm -rf /var/lib/apt/lists/ \
	&& apt-get -qq clean

# create working directory
RUN mkdir /usr/share/app
WORKDIR /usr/share/app

# get victor hugo, replace with:
# ADD git clone <repo url> app
ADD ./app .

# install packages
RUN npm install
