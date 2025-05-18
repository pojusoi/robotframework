FROM python:3.11

RUN pip install --upgrade pip setuptools pip-tools wheel

COPY requirements.txt .
RUN pip install --upgrade pip -r requirements.txt