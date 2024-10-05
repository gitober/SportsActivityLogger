# Use Maven image to build the application
FROM maven:3.8.4-openjdk-17 AS build

# Set working directory inside the container
WORKDIR /app

# Copy the pom.xml to download dependencies first (caching optimization)
COPY pom.xml /app/

# Copy the entire project to the container
COPY . /app/

# Package the application using Maven
RUN mvn clean package

# Use an OpenJDK runtime to run the application
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the built JAR file from the build stage
COPY --from=build /app/target/SportsActivityLogger.jar /app/SportsActivityLogger.jar

# Run the main class from the built JAR
CMD ["java", "-jar", "SportsActivityLogger.jar"]


