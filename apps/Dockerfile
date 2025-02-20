FROM python:3.12.9-alpine3.21
WORKDIR /apps
COPY helloaachen.py /apps
RUN pip install redis
EXPOSE 8000
CMD ["python", "helloaachen.py"]
