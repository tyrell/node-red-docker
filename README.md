## node-red-docker
A Docker container to run Node-RED

## Pull this container from dockerhub

### x86 version

`docker pull tyrell/node-red-docker:x86-latest`

### Raspberry Pi 3 version

`docker pull tyrell/node-red-docker:rpi-latest` 

## Build this container yourself
`docker build -t tyrell/node-red-docker:x86-latest - < Dockerfile`

## Run container

- Port 1880 is forwarded from host to container.

`docker run -d -p 1880:1880 tyrell/node-red-docker:x86-latest`

## Use Node-RED

In your browser launch http://127.0.0.1:1880

## Saving state

Personally, I like to commit the container state after I complete a successful flow. I usually tag the docker image for easy roll-back. Once I'm happy with a flow, I would push the final version to my docker repository. 

In the above work flow, my tested software artifact is the tagged docker container. 


## License
Copyright (c) 2016 Tyrell Perera <tyrell.perera@gmail.com>
Licensed under the MIT license.

