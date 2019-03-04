FROM anapsix/alpine-java:8_server-jre_nashorn
MAINTAINER Eneko Olivares <enolgor@teleco.upv.es>
COPY /src/target/vgateway-docker-dist /vgateway/
WORKDIR "/vgateway"
RUN chmod +x bin/run
ENTRYPOINT ["bin/run"]
EXPOSE 8080 8829