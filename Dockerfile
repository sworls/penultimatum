FROM public.ecr.aws/docker/library/python:3.10.4 as base

WORKDIR /app
ENV PYTHONPATH ./src

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY src ./src