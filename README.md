# Docker-React
A docker container hosting React, Node.js, NPM and Webkit.


# Installation and usage:
To get started, Clone the git repository and cd to the directory.


#### Building the container:
To build the container run:
```
make build
```

#### Starting the container:
To start the container run:
```
make run
```

#### Access a bash console inside the container:
```
make bash
```

#### Stopping the container:
If you wish to stop the container run:
```
make stop
```

#### Removing the container:
If you wish to remove the container and it's images run:
```
make remove
```

#### View container logfile:
If you wish to stream the containers logfile run:
```
make log
```

#### View container information:
To display useful information about the container run:
```
make info
```

#### View usage instructions:
To view the usage instructions from the command line run:
```
make help
```

# Add your user to Docker group

##### If you receive a permission denied message whilst trying to run any of the .sh scripts to build, start, bash or remove your container, please make sure your user is part of the docker group by following these steps:"

#### Create the docker group:
```
sudo groupadd docker"
```
#### Adding your user to the docker group:
```
sudo usermod -aG docker $USER"
```
