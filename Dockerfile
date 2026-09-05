from python:3.15.0rc2-alpine3.24

LABEL maintainer="petropavliuk12.05@gmail.com"

ENV PYTHONUNBUFFERED=1

WORKDIR app/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "-u", "app/main.py"]