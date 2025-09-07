FROM eclipse-temurin:17-jre-jammy
COPY target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]