FROM maven:3-jdk-11 as build
WORKDIR /carts

copy . /carts

RUN mvn clean package -U

FROM adoptopenjdk/openjdk11:alpine

COPY --from=build /carts/target/carts.jar /carts.jar

RUN chmod a+rx ./carts.jar

USER ${SERVICE_USER}

ARG BUILD_DATE
ARG BUILD_VERSION
ARG COMMIT
LABEL org.label-schema.vendor="Weaveworks" \
  org.label-schema.build-date="${BUILD_DATE}" \
  org.label-schema.version="${BUILD_VERSION}" \
  org.label-schema.name="Socks Shop: Cart" \
  org.label-schema.description="REST API for Cart service" \
  org.label-schema.url="https://github.com/microservices-demo/carts" \
  org.label-schema.vcs-url="github.com:microservices-demo/carts.git" \
  org.label-schema.vcs-ref="${COMMIT}" \
  org.label-schema.schema-version="1.0"


ENTRYPOINT ["/opt/java/openjdk/bin/java","-jar","./carts.jar", "--port=80"]                                                          