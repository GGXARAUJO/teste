FROM openjdk:8-jdk

RUN . /etc/environment
ENV JAVA_HOME /usr/local/openjdk-8
ENV PENTAHO_JAVA_HOME /usr/local/openjdk-8
ENV PDI_VERSION=7.1 PDI_BUILD=7.1.0.0-12

RUN mkdir -p /opt/pentaho && \
    cd /opt/pentaho && \
    wget --progress=dot:giga http://downloads.sourceforge.net/project/pentaho/Data%20Integration/${PDI_VERSION}/pdi-ce-${PDI_BUILD}.zip && \
    && unzip -q *.zip \
	  && rm -f *.zip 
    
ENV PENTAHO_HOME /pentaho/data-integration


WORKDIR /pentaho/data-integration
