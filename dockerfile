FROM python:3.13.0rc1-slim

WORKDIR /app

EXPOSE 8000

COPY requirements.txt ./requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY api.py ./

CMD ["gunicorn", "-w", "1", "--log-level", "debug", "-b", "0.0.0.0:8000", "api:app"]