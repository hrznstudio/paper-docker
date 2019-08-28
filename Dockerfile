FROM adoptopenjdk/openjdk8-openj9:alpine-slim

ARG PAPER_JAR_URL
ENV PAPER_JAR_URL=$PAPER_JAR_URL

RUN mkdir -p /paper
ADD ./config /paper/

COPY ./build.sh /build.sh
RUN sh /build.sh

COPY ./run.sh /run.sh

ENV JAVA_MEMORY=2G
ENV JAVA_ARGS=

ENV PORT=25565

CMD ["sh", "/run.sh"]
