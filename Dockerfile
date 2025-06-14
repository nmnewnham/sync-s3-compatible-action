FROM python:3.12-slim

WORKDIR /app

COPY *.py /app/
COPY requirements.txt /app/

RUN apt-get update && apt-get install -y ca-certificates && update-ca-certificates
RUN pip install -r requirements.txt

CMD ["python", "/app/sync.py"]
