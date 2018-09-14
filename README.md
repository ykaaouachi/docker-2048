# Dockerize 2048 app

### Environnement

* Alpine linux 3.8,
* Nginx (last),
* 2048 app : Code source from "https://github.com/gabrielecirulli/2048"

### How to use it

* Need to have Docker installed :),
* To create image from Dockerfile : 
```
 docker build -t ykaaouachi/2048:nginx .
```
* To run container : 
```
docker run -d --name 2048 -p 8080:80 ykaaouachi/2048:nginx
```
* To test : 
 1. Go to http://localhost:8080
 2. If you run docker on VM, go to "http://X.X.X.X:8080" : X.X.X.X server addresse

