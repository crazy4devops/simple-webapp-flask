FROM ubuntu
RUN apt-get update 
RUN apt-get install python -y
RUN pip install flask
RUN pip install flask-mysql
COPY . /opt/appcode
ENTRYPOINT FLASK_APP=/opt/appcode/app.py flask run