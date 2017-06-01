# cf-docker-tomcat7
Docker Tomcat 7 running on Cloud Foundry


* Docker Hub

https://hub.docker.com/r/oahcran/cf-docker-tomcat7/

* Build Steps

```
docker login
docker build -t cf-docker-tomcat7 .
docker images
docker tag cf-docker-tomcat7 oahcran/cf-docker-tomcat7
docker images
docker push oahcran/cf-docker-tomcat7
```

* CF Deployment

default deployment

```
cf push cf-docker-tomcat7 -o oahcran/cf-docker-tomcat7
```

deployment without healthcheck at CF Diego to get ports mapping

```
cf push cf-docker-tomcat7 -o oahcran/cf-docker-tomcat7 -u 'none'
cf app cf-docker-tomcat7 --guid
cf curl /v2/apps/<guid>/stats
```

deployment with `manifest.yml`

currently the `cf cli` does not support put docker image as a part of `manifest.yml`, so the following command line would be useful for a single docker app deployment to Cloud Foundry.

```
cf push -f manifest.yml -o oahcran/cf-docker-tomcat7
```

* To Be Done
