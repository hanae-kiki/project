FROM python:3.10

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Ajouter /app au PYTHONPATH pour que Python trouve le package app
ENV PYTHONPATH=/app

CMD ["python", "-m", "app.main"]