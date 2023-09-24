FROM python:3.10-buster

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app.py .
COPY Jeremy_Smart_fall2023.pdf .

ENTRYPOINT ["flask", "run", "--host=0.0.0.0", "--port=8080"]

