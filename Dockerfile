# Use a base image with JDK
FROM openjdk:17-jdk-slim

# Add metadata
LABEL maintainer="bharathchandragoudme"

# Add the JAR
ARG JAR_FILE=target/docker-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "/app.jar"]
