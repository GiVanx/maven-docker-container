# maven-docker-container

## How to run

``cd maven-docker-container``

### Build the maven container called "maven"

``sudo docker build -t maven .``

### Run the container

``sudo docker run -it --rm --name maven_image_name -v "$(pwd)":/usr/src/mavenproject maven mvn clean install``

* ``maven_image_name`` = the name of the image which is created when the above command is run.
* ``-v`` = maps current folder ($pwd) to the folder /usr/src/mavenproject inside the container. If the folder inside the container does not exist, it is created.
* ``maven`` = the name of the docker container.
* ``mvn clean install`` = the maven command to execute.
