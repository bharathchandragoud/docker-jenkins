# Use OpenJDK image
FROM openjdk:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy JAR file (adjust name accordingly)
COPY target/*.jar app.jar

# Run app
ENTRYPOINT ["java", "-jar", "app.jar"]
