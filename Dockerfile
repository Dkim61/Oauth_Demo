# Pull base image
FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system
RUN pip install python-decouple
RUN pip install djangorestframework
RUN pip install drf_social_oauth2
RUN pip install python-decouple
RUN pip install django-cors-headers
RUN pip install django-urls

# RUN pipenv npm install @mui/material 


# Copy project
COPY . /code/