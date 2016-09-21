FROM docker pull lmalherbe/java:latest

MAINTAINER Lionel Malherbe <l.malherbe@autosecurite.be>

WORKDIR /usr/lib/eurekaserver

# Expose µS listening port
EXPOSE 8761

VOLUME ["/usr/lib/eurekaserver/log"]

CMD ["java","-jar","eurekaserver-1.2.1.jar"]

# Adding JAR
ADD bin/eurekaserver-1.2.1.jar .