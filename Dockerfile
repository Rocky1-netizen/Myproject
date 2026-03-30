# Use Tomcat 10 and Java 17, which support modern Jakarta EE and Hibernate 6
FROM tomcat:10.1-jdk17

# Clear out the default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your specific WAR file and rename it to ROOT.war so it loads at the main URL
COPY MarkManagement.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for Render to connect to
EXPOSE 8080

# Start the server
CMD ["catalina.sh", "run"]
