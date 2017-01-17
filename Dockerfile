FROM tomcat:7
MAINTAINER Chao Ran <oahcran@gmail.com>

ADD ./tomcat7/setenv.sh $CATALINA_HOME/bin/
RUN chmod +x $CATALINA_HOME/bin/setenv.sh

ADD ./tomcat7/server.xml $CATALINA_HOME/conf/
ADD ./tomcat7/tomcat-users.xml $CATALINA_HOME/conf/

EXPOSE 8080
CMD ["catalina.sh", "run"]
