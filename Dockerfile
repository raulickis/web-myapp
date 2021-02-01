FROM tomcat:8
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./build/libs/web-myapp-*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh","run"]8