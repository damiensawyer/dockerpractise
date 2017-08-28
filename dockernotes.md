## Images and Containers
- An image is like a class, containers are instances of classes.

## Links
[.NET Core v1.1.1, Docker Container, Linux Tutorial](https://www.linkedin.com/pulse/net-core-v111-docker-container-linux-tutorial-joe-hoeller--1)

## Dockerfile
- Used as a template for generating images
- Are based on other images in an cumulative stack. The bottom image is 'Scratch' which can only run a binary.  
- If you go to the hub page for each repo you can [see the docker files they're made from](https://hub.docker.com/r/microsoft/dotnet/~/dockerfile/)
- [ENTRYPOINT](https://stackoverflow.com/a/28523123/494635) ([also here] (https://docs.docker.com/engine/reference/builder/#entrypoint)) can run something when a container is created  
- By convention, if there's only one Dockerfile, it's called ```Dockerfile``` however you can name them things like production.dockerfile. 
- You could use different dockerfiles in your code base that build different images of the code for different environments
- [COPY](https://docs.docker.com/engine/reference/builder/#copy) can be used to copy files and folders into the image. You might use this to copy in a version of the code. ADD is similar to copy however can also unpack archives. COPY is [preferred](https://stackoverflow.com/a/24958548/494635) un`less you need ADD
- [ENV](https://docs.docker.com/engine/reference/builder/#env) can be used to set environment variables on the image

## Bind Mounts
- [great docs](https://docs.docker.com/engine/admin/volumes/bind-mounts/)
- If you specify a fULL path then its a 'bind mount'. If you don't pass a full path, then it's a VOLUME. [see here](https://youtu.be/pOGVngLsaX4?t=12m33s)
## Volumes
- If you specify a fULL path then its a 'bind mount'. If you don't pass a full path, then it's a VOLUME. [see here](https://youtu.be/pOGVngLsaX4?t=12m33s)
- Volumes are good because they can be shared between different containers. they DECOUPLE the container from the storage
- Volumes don't get deleted when you delete the container!!
- ```docker volume inspect``` and ```docker volume ls```
- So, sample creation ```docker run -it -v backups:/backups -v logs:/logs ubuntu bash``` This will create two new volumes logs and backup which will be bound to /logs and /backup in the container. Other containers can also bind to them. When you delete the containers, the volumes remain
- You can user ```docker volume rm logs``` to blow away a container.
- ```--volumes-from containername``` when creating a new container will include all the volumes from the other one
- remove all volumes ```docker volume rm -f $(docker volume ls -q)```


