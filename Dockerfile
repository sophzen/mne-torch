FROM pytorch/pytorch:latest
MAINTAINER barradaschacon@tugraz.at

ADD . /workspace
RUN pip install -r requirements.txt