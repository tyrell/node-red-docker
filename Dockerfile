# Uncomment below for local testing
FROM node:argon

# Uncomment below and remove above for Raspberry Pi
# FROM resin/raspberrypi-node

MAINTAINER tyrell

# Download latest stable node-red
RUN npm install -g node-red

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
