FROM openjdk:8-jdk

RUN . /etc/environment
ENV JAVA_HOME /usr/local/openjdk-8
ENV PENTAHO_JAVA_HOME /usr/local/openjdk-8


COPY data-integration /pentaho/data-integration
ENV PENTAHO_HOME /pentaho/data-integration


WORKDIR /pentaho/data-integration
