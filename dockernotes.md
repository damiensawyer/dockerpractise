## Images and Containers
- An image is like a class, containers are instances of classes.

## Dockerfile
- Used as a template for generating images
- Are based on other images in an cumulative stack. The bottom image is 'Scratch' which can only run a binary.  
- If you go to the hub page for each repo you can [see the docker files they're made from](https://hub.docker.com/r/microsoft/dotnet/~/dockerfile/)
- [ENTRYPOINT](https://stackoverflow.com/a/28523123/494635) ([also here] (https://docs.docker.com/engine/reference/builder/#entrypoint)) can run something when a container is created  
- By convention, if there's only one Dockerfile, it's called ```Dockerfile``` however you can name them things like production.dockerfile. 
- You could use different dockerfiles in your code base that build different images of the code for different environments
- [COPY](https://docs.docker.com/engine/reference/builder/#copy) can be used to copy files and folders into the image. You might use this to copy in a version of the code. ADD is similar to copy however can also unpack archives. COPY is [preferred](https://stackoverflow.com/a/24958548/494635) un`less you need ADD
- [ENV](https://docs.docker.com/engine/reference/builder/#env) can be used to set environment variables on the image
