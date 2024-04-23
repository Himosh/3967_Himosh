FROM openjdk:8

EXPOSE 8080


# Set the working directory
ADD target/spring-docker.jar spring-docker.jar


ENTRYPOINT ["java", "-jar", "/spring-docker.jar"]
