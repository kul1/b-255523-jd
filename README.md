# Jinda in Docker

- Sample Jinda Application in ruby-2.5.5@rails-5.2.3 in Docker
This sample already install through gem jinda with ruby 2.5.5@rails 5.2.3

## How to install
- Download or clone to your computer with Docker installed
- cd b-255523-jd
- run the following command
~~~
docker-compose build
docker-compose up
~~~
To verify run
~~~
$docker ps
~~~
Should have following list
~~~
b-255523-jd $ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                      NAMES
5e6e3ad19759        b-255523-jd_web     "entrypoint.sh bash …"   8 minutes ago       Up 8 minutes        0.0.0.0:3000->3000/tcp     b-255523-jd_web_1
0613daaa3f7d        mongo               "docker-entrypoint.s…"   8 minutes ago       Up 8 minutes        0.0.0.0:27017->27017/tcp   b-255523-jd_mongodb_1
~~~
at browser
~~~
http://localhost:3000
~~~
![Docker-Jinda](https://user-images.githubusercontent.com/3953832/64446834-d7ca8380-d0a7-11e9-93ac-be80d3110f91.png)
-
