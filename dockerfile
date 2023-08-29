# Use a imagem oficial do Tomcat como base
FROM tomcat:8.0

# Mantenedor da imagem
LABEL maintainer <rsrodrigues.88@hotmail.com>

# Download do arquivo WAR e colocando-o na pasta webapps do Tomcat
WORKDIR /usr/local/tomcat/webapps
RUN curl -O -L https://tomcat2.s3.amazonaws.com/sisimovel.war && \
    mv sisimovel.war imoveis.war

# Expor a porta padrão do Tomcat
EXPOSE 80

# Iniciar o Tomcat
CMD ["catalina.sh", "run"]
