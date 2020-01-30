# getting base image ubuntu
FROM ubuntu:18.04

# Installing nginx, python and nodejs

RUN apt-get update -y && \
    apt-get install \
    nginx -y \
    python -y \
    nodejs -y

EXPOSE 80 
