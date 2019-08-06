FROM maven:latest as build
WORKDIR /build
COPY . /build

RUN mvn clean install

FROM maven:latest

WORKDIR services
COPY --FROM build .
COPY /core-api /services

ENTRYPOINT [ "mvn", "spring-boot:run" ]