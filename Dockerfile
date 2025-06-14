FROM gradle:7.6.1-jdk17 AS builder
COPY . /app
WORKDIR /app
RUN gradle build -x test

FROM openjdk:17-jdk-slim
COPY --from=builder /app/build/libs/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
