FROM openjdk:8

RUN curl https://stedolan.github.io/jq/download/linux64/jq > /usr/bin/jq && chmod +x /usr/bin/jq
RUN ls -la /usr/bin/jq

RUN cd ~
COPY test.json test.json
RUN jq '.' test.json
