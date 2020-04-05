FROM adoptopenjdk/openjdk8

ENV APP_JAR_NAME = "spring-boot-docker-1.0.jar"
ENV JAVA_OPTS = "-xms512m -xms512m"
ENV SPRINGBOOT_ARGS = "-spring.config.location=classpath:/ ./opt/springboot/config/"

COPY target/$APP_JAR_NAME $APP_JAR_NAME

EXPOSE 8080

ENTRYPOINT exec java $JAVA_OPTS -jar $APP_JAR_NAME $SPRINGBOOT_ARGS