FROM python:3.9-slim AS simple

WORKDIR /app

COPY . /app/

RUN pip install --no-cache-dir -r requirments.txt

FROM python:3.9-slim AS timestamp

WORKDIR /app

RUN addgroup --system appgroup && adduser --system --group appuser



COPY --from=SIMPLE /app/dist ./dist

USER appuser

EXPOSE 5000

CMD ["python", "app.py"]