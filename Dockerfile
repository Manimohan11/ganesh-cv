FROM tomcat
RUN mv webapps webapp2
RUN mv webapps.dist webapps
WORKDIR webapps
COPY target/WebApp.war .
RUN rm -rf ROOT && mv WebApp.war ROOT.war
