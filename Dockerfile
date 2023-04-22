FROM python:latest

WORKDIR /somativadevops

ADD . /somativadevops

RUN pip install -r requirements.txt

CMD ["python", "app.py"]
