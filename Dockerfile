FROM openjdk:jre-alpine

RUN apk add --no-cache --update bash && mkdir cx

ADD ./cx/ cx
