# Use a base image with Java installed
FROM openjdk:17-jdk-slim

# Add the JAR file to the container
ADD target/docker.jar docker.jar

# Expose the port your application runs on (if necessary)
EXPOSE 9098

# Command to run the application
CMD ["java", "-jar", "docker.jar"]