FROM python:3.11

RUN apt update
RUN apt install gcc make libssl-dev musl-dev libffi-dev

RUN pip install --upgrade pip setuptools pip-tools wheel

COPY requirements.txt .
RUN pip install --upgrade pip -r requirements.txt