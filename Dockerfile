FROM openjdk:8-jdk

RUN . /etc/environment
ENV JAVA_HOME /usr/local/openjdk-8
ENV PENTAHO_JAVA_HOME /usr/local/openjdk-8


RUN mkdir -p /pentaho/data-integration && \
    cd /pentaho/data-integration && \
    wget --progress=dot:giga https://sourceforge.net/projects/pentaho/files/Data%20Integration/7.1/pdi-ce-7.1.0.0-12.zip/download?use_mirror=sonik && \
    && unzip -q *.zip \
	  && rm -f *.zip 
    
ENV PENTAHO_HOME /pentaho/data-integration


WORKDIR /pentaho/data-integration
