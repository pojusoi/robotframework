FROM python:3.11

RUN apt update
RUN apt install -y libatm1 libbpf1 libcap2 libcap2-bin libmnl0 libpam-cap libxtables12
RUN apt install -y iproute2-doc traceroute musl
RUN apt install -y openssl libssl3 libssl-dev libssl-doc
RUN apt install -y gcc make libssl-dev musl-dev libffi-dev net-tools iproute2 iputils-tracepath

RUN pip install --upgrade pip setuptools pip-tools wheel

COPY requirements.txt .
RUN pip install --upgrade pip -r requirements.txt