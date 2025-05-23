# Use a lightweight OpenJDK base image
FROM openjdk:17-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy the built jar into the container
COPY target/docker-0.0.1-SNAPSHOT.jar app.jar

# Set the startup command
ENTRYPOINT ["java", "-jar", "app.jar"]
