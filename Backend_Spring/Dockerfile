# Stage 1: Build
FROM maven AS build

WORKDIR /Backend_Spring

COPY . .

RUN mvn clean install -DskipTests


# Stage 2: Run
FROM openjdk:17-jdk-slim

WORKDIR /Backend_Spring

COPY --from=build /Backend_Spring/target/Backend*.jar springBackendAppProjekt.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "springBackendAppProjekt.jar"]
