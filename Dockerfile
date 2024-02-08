FROM python:3.8
ADD requirements.txt /
ADD core /core
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["python", "core/prometheus_exporter.py"]
