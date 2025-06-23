FROM openjdk:26-slim-bookworm
VOLUME /tmp
COPY target/keycloak-demo-0.0.1.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]