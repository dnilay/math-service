FROM public.ecr.aws/docker/library/openjdk:11
ARG JAR_FILE=build/libs/*SNAPSHOT.jar
COPY ${JAR_FILE} /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]