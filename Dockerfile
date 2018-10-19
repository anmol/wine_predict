FROM continuumio/miniconda3

WORKDIR /app

ADD . /app

MAINTAINER "anmol gautam" "anmolprakash.gautam@iiitb.net"

RUN apt-get update && \
pip install --no-cache-dir -r requirements.txt

EXPOSE 2345

CMD mlflow sklearn serve -m /app/model --host 0.0.0.0 -p 2345


