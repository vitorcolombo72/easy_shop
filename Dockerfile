FROM python:3.11-slim

# Evita que o Python gere arquivos .pyc e bufferize a saída
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Instula dependências do sistema necessárias para compilar o psycopg2 e outras libs
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Instala as dependências do Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do código do projeto para dentro do container
COPY . .

EXPOSE 8000