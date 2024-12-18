# Stage 1: Build the application
FROM maven:3.8-openjdk-17-slim AS build

# Set the working directory
WORKDIR /app

# Copy Maven project files
COPY pom.xml .
COPY src ./src

# Build the project (skip tests for faster builds)
RUN mvn clean package -DskipTests

# Stage 2: Runtime environment (using Alpine)
FROM openjdk:17-alpine AS runtime

# Set the working directory
WORKDIR /app

# Copy the compiled JAR file from the build stage
COPY --from=build /app/target/myapp.jar /app/myapp.jar

# Expose the port that your application listens on (for example, 8080)
EXPOSE 8080

# Run the Java application
CMD ["java", "-jar", "myapp.jar"]
