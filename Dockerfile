FROM ubuntu:18.04
RUN apt-get update 
RUN apt-get install -y python python-pip
RUN pip install flask && pip install --upgrade pip
COPY . /opt/appcode
ENTRYPOINT FLASK_APP=/opt/appcode/app.py flask run --host=0.0.0.0 --port=8080