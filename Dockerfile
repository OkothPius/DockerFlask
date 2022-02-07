FROM python:3.9

WORKDIR /FlaskDocker
COPY . .


RUN pip install -r requirements.txt

ENTRYPOINT ["python"]

RUN FLASK_APP=app
RUN FLASK_ENV=development
RUN python app.py
