FROM weplayregistrytest.azurecr.io/java8:1.1

WORKDIR /service
ENV JAVA_OPTS "-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap"
ENV SERVICE_PARAMS ""
COPY target/test-project.jar /service/
CMD java-entrypoint test-project.jar
