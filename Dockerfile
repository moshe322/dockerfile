FROM adoptopenjdk/openjdk11:alpine-jre
# Refer to Maven build -> finalName
#ARG JAR_FILE=target/spring-boot-web.jar
# cd /opt/app
WORKDIR /opt/app
ARG JAR_FILE=target/*.jar
# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${spring-boot-web.jar} app.jar
# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
