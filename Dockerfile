FROM python:3.11

WORKDIR /app/backend

COPY requirements.txt /app/backend
RUN pip install -r requirements.txt

COPY . /app/backend

EXPOSE 8777

CMD python /app/backend/manage.py runserver 0.0.0.0:8000
