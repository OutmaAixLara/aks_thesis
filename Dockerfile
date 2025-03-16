FROM python:3.11-slim
ENV PORT 8000
EXPOSE 8000
WORKDIR /apps
COPY helloaachen.py /apps

ENTRYPOINT ["python"]
CMD ["app.py"]
