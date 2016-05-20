# node-red-docker
A Docker image to run Node-RED

# Build container
`docker build -t tyrell/node-red-docker:x86-latest - < Dockerfile`

# Run container

- Port 1880 is forwarded from host to container.
- Volume set to map hosts .node-red user directory into the containers .node-red user directory.

`docker run -d -p 1880:1880 tyrell/node-red-docker:x86-latest`
