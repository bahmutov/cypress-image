FROM node:6

ENV VERBOSE true

RUN apt-get update
RUN apt-get install -y xvfb

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install

# RUN chrome --version
RUN google-chrome --version

RUN ln -s google-chrome /usr/bin/chrome
