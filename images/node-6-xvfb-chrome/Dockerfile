FROM node:6

ENV VERBOSE true

RUN apt-get update
RUN apt-get install -y xvfb
# try installing just Chrome file and it tells you the missing dependencies
# install them here
RUN apt-get install -y \
  gconf-service \
  libasound2 \
  libatk1.0-0 \
  libcups2 \
  libdbus-1-3 \
  libgconf-2-4 \
  libgtk2.0-0 \
  libnspr4 \
  libnss3 \
  libpango1.0-0 \
  libxss1 \
  libxtst6 \
  fonts-liberation \
  libappindicator1 \
  xdg-utils

WORKDIR .
ADD chrome.sh chrome.sh
RUN ./chrome.sh

# RUN \
#   wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
#   echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
#   apt-get update && \
#   apt-get install -y xvfb google-chrome-stable && \
#   rm -rf /var/lib/apt/lists/*

# RUN chrome --version
RUN google-chrome --version

RUN ln -s google-chrome /usr/bin/chrome
