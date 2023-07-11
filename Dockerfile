FROM openjdk:8-alpine

COPY Downloads/spring-boot-web.jar spring-boot-web.jar

EXPOSE 8080

CMD ["java", "-jar", "spring-boot-web.jar"]
