FROM public.ecr.aws/docker/library/python:3.10.10 as base

ARG PIP_OPTIONS="--disable-pip-version-check --no-cache-dir"

WORKDIR /app
ENV PYTHONPATH ./src

COPY requirements.txt ./
RUN pip install $PIP_OPTIONS -r requirements.txt

COPY src ./src