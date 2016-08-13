FROM python:3.4
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y supervisor

COPY requirements.txt /usr/src/app
RUN pip install -r requirements.txt

COPY . /usr/src/app
EXPOSE 80

ENV C_FORCE_ROOT=1
CMD ["/usr/bin/supervisord"]
