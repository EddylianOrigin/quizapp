FROM maven AS build

WORKDIR /springAppProjekt/quizapp

COPY . .

RUN mvn clean install -DskipTests

FROM openjdk:17-jdk-slim

WORKDIR /springAppProjekt

COPY --from=build /springAppProjekt/quizapp/target/quizapp*.jar springAppProjekt.jar

EXPOSE 1221

ENTRYPOINT ["java", "-jar", "springAppProjekt.jar"]