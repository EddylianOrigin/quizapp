# Getting start with quizapp
Running this Spring project involves several steps. Here’s a comprehensive guide to get you started.

## Installation required
Before to start, you will need to install these: 

- Git::> https://git-scm.com/downloads

- Java (Jdk_17) ::> https://www.oracle.com/java/technologies/downloads/#java21

- Docker ::> https://www.docker.com/get-started/

- PostgreSQL ::> https://www.postgresql.org/download/

## Necessary Steps to get access to the project 
- First of all, clone the project on your local device using the git command :
  ```
  Git clone "url of the repository"
  ```
- Open the project using VScode or another python IDE of your choice.
  
- Open the terminal in the IDE to the path corresponding to the project.

## Install Spring Dependancy and run the project:
- Run PostgreSql( pgadmin or a Terminal instance) first

- login
  
- add required setting in project like username and password 
  
Run this command on the opened terminal:
- Build the project (download dependencies, compile the code, and run tests by default)
  ```
  mvn clean install 
  ```
- Run the Project (Spring Boot application from the main class annotated with @SpringBootApplication will be executed.)
  ```
  mvn spring-boot:run 
  ```

(In case of error message try to debug with your IDE)
  ...in progress
  
## Learn more

To learn Spring, check out the Documentation::> https://spring.io/quickstart

To learn rest API::> https://spring.io/guides/tutorials/rest

Please feel free to develop the project further and let me know about any changes or progress you’ve made by giving the project repository a ‘like’ – just for fun. :)
