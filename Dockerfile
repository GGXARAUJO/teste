FROM openjdk:8-jdk

RUN . /etc/environment
ENV JAVA_HOME /usr/local/openjdk-8
ENV PENTAHO_JAVA_HOME /usr/local/openjdk-8


RUN mkdir /pentaho && mkdir /pentaho/data-integration
WORKDIR /pentaho/data-integration
RUN wget -O pdi-ce-7.1.0.0-12.zip "https://sourceforge.net/projects/pentaho/files/Data%20Integration/7.1/pdi-ce-7.1.0.0-12.zip/download?use_mirror=sonik"
RUN unzip pdi-ce-7.1.0.0-12.zip && rm pdi-ce-7.1.0.0-12.zip
    
ENV PENTAHO_HOME /pentaho/data-integration


