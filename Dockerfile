FROM openjdk:17-jdk-slim

COPY *.zip /opt/ml/model/d

WORKDIR /usr/src/app
COPY . .


EXPOSE 8082
CMD ["java", "-jar", "/usr/src/app/target/djl-serving-0.0.1-SNAPSHOT.jar"]