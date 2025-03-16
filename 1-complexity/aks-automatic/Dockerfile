FROM python:3.12-slim
WORKDIR ./1-complexity/aks-automatic
COPY helloaacchen.py ./1-complexity/aks-automatic
RUN pip install --no-cache-dir redis
EXPOSE 8000

CMD ["python", "helloaachen.py"]
