# Use a base image with Java installed
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY src/*.jar app.jar

# Expose the port that the application will run on (if applicable)
EXPOSE 4443

# Set the command to run the Java application
CMD ["java", "-jar", "app.jar"]