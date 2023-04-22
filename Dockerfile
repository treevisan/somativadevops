# FROM python:latest
#
# WORKDIR /somativadevops
#
# ADD . /somativadevops
#
# RUN pip3 install -r requirements.txt
#
# CMD ["python3", "app.py"]

FROM python:3.7-alpine
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000
RUN apk add --no-cache gcc musl-dev linux-headers

WORKDIR /somativadevops
COPY . /somativadevops
RUN pip install -r requirements.txt
EXPOSE 5000
CMD [ "flask", "run" ]