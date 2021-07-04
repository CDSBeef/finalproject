FROM maven:3.8.1-openjdk-8

RUN useradd -m -u 114 -s /bin/bash jenkins
