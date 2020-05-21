FROM python:stretch

COPY main.py /app/main.py
COPY requirements.txt /app/requirements.txt

WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
