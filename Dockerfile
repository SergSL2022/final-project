FROM python:3.9-alpine

WORKDIR /app

ENV FLASK_APP=app.py

COPY ./python /app

RUN pip install --upgrade pip setuptools wheel
RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]