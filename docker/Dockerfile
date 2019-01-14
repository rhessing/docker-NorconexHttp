FROM openjdk:8-jdk-alpine

ENV CRAWLER_HOME /opt/collector-http

RUN addgroup norconex && \
    adduser -D -G norconex norconex

RUN mkdir -p ${CRAWLER_HOME}
COPY ./ ${CRAWLER_HOME}

RUN chown -R norconex:norconex ${CRAWLER_HOME} && chmod -R 755 ${CRAWLER_HOME}
ENTRYPOINT [ "${CRAWLER_HOME}/docker/entrypoint.sh" ]