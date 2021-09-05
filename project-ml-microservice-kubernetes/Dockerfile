FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/
COPY . model_data/ /app/

RUN pip install --upgrade --no-cache-dir pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt --no-cache-dir

EXPOSE 80

ENTRYPOINT ["python3", "app.py"]
