FROM node:6

# Need Xvfb and its dependencies
RUN apt-get update --yes
RUN apt-get install --yes \
  libgtk2.0-0 \
  libnotify-dev \
  libgconf-2-4 \
  libnss3 \
  libxss1
RUN apt-get install --yes xvfb
