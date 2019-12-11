FROM python:3.7

RUN mkdir /app
WORKDIR /app
COPY app/requirements.txt /app/
RUN pip install -r requirements.txt
ADD . /app/

EXPOSE 5000
CMD ["python", "/app/main.py"]