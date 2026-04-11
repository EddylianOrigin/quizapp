FROM maven AS build

WORKDIR /springAppProjekt/quizapp/Backend

COPY . .

RUN mvn clean install -DskipTests

FROM openjdk:17-jdk-slim

WORKDIR /springAppProjekt/quizapp/Backend

COPY --from=build /springAppProjekt/quizapp/Backend/target/backend*.jar springAppProjekt.jar

EXPOSE 1221

ENTRYPOINT ["java", "-jar", "springAppProjekt.jar"]
