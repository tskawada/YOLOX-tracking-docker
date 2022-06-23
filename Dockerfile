FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-devel

RUN gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv A4B469963BF863CC
RUN gpg --export --armor A4B469963BF863CC | apt-key add -
RUN apt update -y

RUN apt install libgl1-mesa-dev -y
RUN apt install libglib2.0-0 -y

RUN pip install --upgrade pip

COPY requirements.txt .
RUN pip install --upgrade protobuf==3.2.0
RUN pip install -r requirements.txt