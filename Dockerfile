FROM openjdk:jre-alpine

ADD cx /

RUN apk add --no-cache --update curl python jq bash && \
    curl "https://download.checkmarx.com/8.8.0/Plugins/CxConsolePlugin-8.80.2.zip" -o /tmp/console.zip && \
    mkdir -p /opt/CxConsolePlugin && \
    unzip /tmp/console.zip -d /tmp && \
    mv /tmp/CxConsolePlugin-8.80.2/* /opt/CxConsolePlugin && \
    rm -rf /tmp/console.zip && \
    rm -rf /tmp/CxConsolePlugin-8.80.2 && \
    chmod +x /opt/CxConsolePlugin/runCxConsole.sh && \
    rm -rf /var/cache/apk/*
