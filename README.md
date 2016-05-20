# node-red-docker
A Docker image to run Node-RED

# Build container
`docker build -t tyrell/node-red-docker:x86-latest - < Dockerfile`

# Run container

- Port 1880 is forwarded from host to container.

`docker run -d -p 1880:1880 tyrell/node-red-docker:x86-latest`

# Use Node-RED

In your browser launch http://127.0.0.1:1880

## License
Copyright (c) 2016 Tyrell Perera <tyrell.perera@gmail.com>
Licensed under the MIT license.

