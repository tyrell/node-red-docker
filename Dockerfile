# Uncomment below for local testing
#FROM node:argon

# Uncomment below and remove above for Raspberry Pi
FROM resin/raspberrypi-node

MAINTAINER tyrell

# Workaround for npm issue https://github.com/npm/npm/issues/9863 
RUN cd $(npm root -g)/npm \
&& npm install fs-extra \
&& sed -i -e s/graceful-fs/fs-extra/ -e s/fs.rename/fs.move/ ./lib/utils/rename.js

# Download latest stable node-red
RUN sudo npm install -g node-red

# Change directory to the user .node-red to execute the rest of our commands.
WORKDIR "/root/.node-red"

# Install Arduino node
RUN npm install node-red-node-arduino

# Install Johnny Five
RUN npm install node-red-contrib-gpio

# Install PubNub
RUN npm install node-red-contrib-pubnub

# Expose port
EXPOSE 1880
 
# Set the default command to execute
# when creating a new container
CMD /usr/local/bin/node-red
