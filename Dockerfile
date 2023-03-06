FROM tomcat
RUN mv webapps webapp2
RUN mv webapps.dist webapps
WORKDIR webapps
COPY target/CV.war .
RUN rm -rf ROOT && mv CV.war ROOT.war
