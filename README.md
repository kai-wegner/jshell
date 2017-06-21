# jshell
Find the docker-repository here: https://hub.docker.com/r/kawe/jshell/

Simple wetty (web-based tty) JShell (Java 9) image for fast and quick java-prototyping.

Start this container - start your browser - goto http://localhost:8080 - enjoy the power of JShell

This container is based on wetty (web-based tty) and the official jdk-9 image brining the joy of JShell into your browser. No need to have anythink locally installed - prototype your JDK 9 features in seconds and remote.

__Login with password: shell__

Happy coding!

```
docker run -p 8080:8080 kawe/jshell
```
or
```
docker-compose up
```

