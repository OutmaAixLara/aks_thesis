FROM python:3.11-slim
ENV PORT 8000
EXPOSE 8000
WORKDIR /usr/src/app

COPY . .

ENTRYPOINT ["python"]
CMD ["app.py"]
