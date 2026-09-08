FROM python:3.12-slim

WORKDIR /app

COPY application/ /app/

RUN pip install flask

EXPOSE 5000

CMD ["python", "app.py"]

