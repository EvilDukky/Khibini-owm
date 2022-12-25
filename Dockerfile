FROM python:latest

RUN apt-get update && \
pip install psycopg2 && \
pip install requests

WORKDIR /home/ubuntu/

COPY . .

CMD ["python3", "/home/ubuntu/parser.py"]
