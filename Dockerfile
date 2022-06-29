FROM pytorch/pytorch:latest
MAINTAINER barradaschacon@tugraz.at

EXPOSE 8888
ADD . /workspace
RUN pip install -r requirements-lab.txt
