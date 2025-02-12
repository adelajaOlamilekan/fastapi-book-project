FROM python:3.11-slim

WORKDIR /fastapi-book

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

RUN pip install fastapi[standard]

COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
