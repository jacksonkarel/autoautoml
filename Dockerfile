# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /selfmodifai

COPY requirements.txt selfmodifai/requirements.txt

COPY setup.py selfmodifai/setup.py

COPY README.md selfmodifai/README.md

COPY selfmodifai selfmodifai/selfmodifai

COPY prompts selfmodifai/prompts

RUN pip install ./selfmodifai 

WORKDIR /selfmodifai/model

CMD ["tail", "-f", "/dev/null"]