FROM maven:3.9.6-eclipse-temurin-21 as build
WORKDIR /app
COPY pom.xml .
COPY . .
RUN mvn clean package


FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
COPY --from=build /app/target/tp_spring_boot-0.0.1-SNAPSHOT.jar app.jar
CMD ["java","-jar","app.jar"]