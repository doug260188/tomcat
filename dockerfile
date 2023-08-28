FROM tomcat:8.0

LABEL maintainer Rodrigo Silva Rodrigues <rsrodrigues.88@hotmail.com>

# Instalando aplicativos
#RUN apt update -y
#RUN apt install gzip -y
#RUN apt install zip -y
#RUN apt install wget -y
#RUN sudo apt install openjdk-16-jdk

# Criando Diretorio
#RUN mkdir /opt/tomcat/

#WORKDIR /opt/tomcat
#RUN wget https://tomcat2.s3.amazonaws.com/apache-tomcat-8.5.93.tar.gz 
#RUN tar xvfz apache*.tar.gz
#RUN mv apache-tomcat-8.5.93/* /opt/tomcat/.

WORKDIR /usr/local/tomcat/webapps
#WORKDIR /opt/tomcat/webapps
RUN wget https://tomcat2.s3.amazonaws.com/sisimovel.war -O imoveis.war

EXPOSE 8085
CMD ["/opt/tomcat/catalina.sh", "run"]