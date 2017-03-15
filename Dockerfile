FROM openjdk:8

MAINTAINER William Turner <william.turner@aero.bombardier.com>

ENV PRESTO_VERSION 0.168

RUN mkdir /opt/presto && \
    curl -LS https://repo1.maven.org/maven2/com/facebook/presto/presto-server/${PRESTO_VERSION}/presto-server-${PRESTO_VERSION}.tar.gz | tar -xz --strip-components=1 -C /opt/presto

COPY ["./etc", "/opt/presto/etc"]

EXPOSE 8080

CMD ["/opt/presto/bin/launcher", "run"]
