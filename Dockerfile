# Dockerfile-flask
FROM python:3
COPY . /Flaskex
WORKDIR /Flaskex
EXPOSE 5001
# Install Python dependencies
RUN pip install -r requirements.txt
RUN pip install uWSGI
CMD [ "uwsgi", "--ini", "app.ini" ]


