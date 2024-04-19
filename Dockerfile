FROM openjdk:17
VOLUME /tmp
# RUN sh mvnw --settings setting.xml clean package -DskipTests
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN ls -l
#COPY keystore/cacerts cacerts
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar app.jar"]
