FROM python:3.7-alpine
ENV PYTHONUNBUFFERED 1
RUN pip install pipenv
WORKDIR /app
COPY Pipfile* ./
RUN pipenv lock --requirements > requirements.txt
RUN pip install -r requirements.txt
COPY ./src ./