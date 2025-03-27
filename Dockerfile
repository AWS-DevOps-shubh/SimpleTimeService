FROM python:3.9-slim AS simple

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt --target /app/dependencies
#RUN pip install --upgrade pip

FROM python:3.9-slim AS timestamp

WORKDIR /app

RUN addgroup --system appgroup && adduser --system --group appuser

COPY --from=simple  /app/dependencies /app/dependencies

ENV PYTHONPATH="/app/dependencies"

COPY app.py /app/

USER appuser

EXPOSE 5000

CMD ["python", "app.py"]
