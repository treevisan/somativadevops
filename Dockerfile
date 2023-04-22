FROM python:latest

WORKDIR /somativadevops

ADD . /somativadevops

RUN pip3 install -r requirements.txt

CMD ["python3", "app.py"]
