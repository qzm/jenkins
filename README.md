# jenkins
npm jenkins docker https://hub.docker.com/r/chiminyau/jenkins/
## docker compose
```yaml
jenkins:
  image: chiminyau/jenkins
  ports:
    - 8080:8080
  volumes:
    - /var/run/docker.sock:/var/run/docker.sock
    - /usr/bin/docker:/usr/bin/docker
```
