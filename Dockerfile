FROM python:latest

RUN pip install <flask>

WORKDIR /somativadevops

COPY . /somativadevops

CMD ["python", "app.py"]
