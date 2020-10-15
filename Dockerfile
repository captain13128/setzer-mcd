FROM python:3.6

WORKDIR /app

RUN apt update
RUN apt install -y \
    make \
    bc \
    curl \
    datamash \
    jshon

COPY . .

RUN make link