# Uncomment below for local testing
FROM node:argon

# Uncomment below and remove above for Raspberry Pi
# FROM resin/raspberrypi-node

MAINTAINER tyrell

# Download latest stable node-red
RUN npm install -g node-red

# Use external storage for the user directory
VOLUME /root/.node-red

# Expose port
EXPOSE 1880
 
# Set the default command to execute
# when creating a new container
CMD /usr/local/bin/node-red
