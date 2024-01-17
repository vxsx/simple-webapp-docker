FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python3 python3-pip

RUN pip install flask 

COPY app.py /opt/

ENV FLASK_APP=/opt/app.py

EXPOSE 8080

CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
