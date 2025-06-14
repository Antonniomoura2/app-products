# Etapa de build
FROM gradle:7.6.1-jdk17 AS builder

COPY . /app
WORKDIR /app

# Dá permissão de execução ao wrapper
RUN chmod +x ./gradlew

# Usa o wrapper do projeto
RUN ./gradlew bootJar --no-daemon

# Etapa de runtime
FROM openjdk:17-jdk-slim
COPY --from=builder /app/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]
