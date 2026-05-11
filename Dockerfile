# We need Java 8 from amazoncornetto 
FROM amazoncorretto:8-alpine3.22-jdk

#Open port 8080
EXPOSE 8080

WORKDIR /usr/src/app

# Copy the files required from git repo
COPY spring-example-project/ ./

# Compile the code 
RUN ./mvnw package

# And finally the command to run the java  application
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
