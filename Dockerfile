FROM python:latest
WORKDIR /app
COPY . /app
RUN pip install Flask
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "8000"]
