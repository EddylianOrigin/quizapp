# Stage 1: Build
FROM maven:3.9-eclipse-temurin-17 AS build

WORKDIR /quizapp/Backend_Spring

COPY . .

RUN mvn clean install -DskipTests


# Stage 2: Run
FROM eclipse-temurin:17-jre

LABEL maintainer="EDDYLIAN"

WORKDIR /quizapp/Backend_Spring

COPY --from=build /quizapp/Backend_Spring/target/Backend*.jar springBackendAppProjekt.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "springBackendAppProjekt.jar"]
