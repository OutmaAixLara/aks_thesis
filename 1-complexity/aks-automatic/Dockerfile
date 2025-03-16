FROM python:3.11-slim
ENV PORT 8000
EXPOSE 8000
WORKDIR /1-complexity/aks-automatic

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . /1-complexity/aks-automatic

ENTRYPOINT ["python"]
CMD ["helloaachen.py"]
