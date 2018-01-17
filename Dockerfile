FROM ubuntu:latest

RUN apt-get update && \
    apt-get install python3 && \
    apt-get install python3-pip

COPY ./requirements.txt /Users/ffrade/ambienteDockerTest/requirements.txt
WORKDIR /Users/ffrade/ambienteDockerTest
RUN pip3 install -r requirements.txt

COPY . /Users/ffrade/ambienteDockerTest

ENTRYPOINT ["python3"]
CMD ["app.py"]
