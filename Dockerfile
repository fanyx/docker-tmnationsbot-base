FROM python:3-slim-buster

RUN ln -snf /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
    echo "Europe/Berlin" > /etc/timezone

COPY trackmania_nations_challenge_bot/requirements.txt /

RUN ["pip3","install","-r","/requirements.txt"]
