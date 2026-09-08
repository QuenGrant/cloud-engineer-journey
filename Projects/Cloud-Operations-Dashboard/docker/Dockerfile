FROM python:3.12-slim

WORKDIR /app

COPY application/ /app/

COPY application/requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]

