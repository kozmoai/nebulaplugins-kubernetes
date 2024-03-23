ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION}-slim

COPY . ./

RUN pip install -e .

ENTRYPOINT ["nebula", "worker", "start", "--type", "kubernetes"]
