FROM python:3.7.3-alpine3.9
WORKDIR /data
COPY pyvmomi-community-samples /data
RUN apk --update add --virtual build-dependencies && \
    cd /data && \
    pip install pyvmomi