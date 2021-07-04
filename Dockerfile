FROM maven:3.8.1-openjdk-8

RUN useradd -m -u 118 -s /bin/bash jenkins

RUN git clone https://github.com/CDSBeef/finalproject.git

WORKDIR /finalproject

RUN ls

RUN pwd

RUN mvn package

EXPOSE 8080

CMD ["mvn", "spring-boot:run"]
