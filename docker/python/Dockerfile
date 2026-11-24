
# Etapa 1: Instalación de dependencias
FROM python:3.12-slim AS build

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

# Etapa 2: Ejecución
FROM python:3.12-slim AS final

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY --from=build /install /usr/local
COPY . .

EXPOSE 8000

CMD ["python", "main.py"]
