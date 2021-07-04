FROM maven:3.8.1-openjdk-8

RUN useradd -m -u 118 -s /bin/bash jenkins

EXPOSE 8080
