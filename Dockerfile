FROM tomcat
RUN mv webapps webapp2
RUN mv webapps.dist webapps
WORKDIR webapps
COPY target/myweb.war .
RUN rm -rf ROOT && mv myweb.war ROOT.war
