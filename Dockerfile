FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir fastapi uvicorn pillow python-multipart onnxruntime
RUN pip install --no-cache-dir "rembg[cpu]"

COPY . .

CMD uvicorn main:app --host 0.0.0.0 --port $PORT
