FROM python:3.8.19-slim-bullseye

WORKDIR /app

COPY ./requirements.txt /app

RUN pip install -r requirements.txt

COPY ./srcs /app/

EXPOSE 8888

CMD ["gunicorn", "app:app", "-b", ":8888", "-w", "4"]



