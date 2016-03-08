FROM ubuntu:14.04
RUN apt-get update --fix-missing && apt-get -y dist-upgrade && apt-get -y install software-properties-common git build-essential curl && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install -y nodejs && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN npm install -g grunt-cli bower gulp-cli
