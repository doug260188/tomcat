FROM ubuntu:16.04

# Install prerequisites
RUN apt -y update 
RUN apt -y install openjdk-8-jdk
RUN apt -y install wget
RUN apt -y install curl
RUN mkdir /usr/local/tomcat

WORKDIR /usr/local/tomcat

RUN wget https://downloads.apache.org/tomcat/tomcat-10/v10.1.13/bin/apache-tomcat-10.1.13.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-10.1.13/* /usr/local/tomcat/

EXPOSE 8080
# java
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# Define default command.
CMD ["bash"]

MAINTAINER rsrodrigues.88@hotmail.com


WORKDIR /usr/local/tomcat/webapps
RUN curl -O -L https://tomcat2.s3.amazonaws.com/sisimovel.war


CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]