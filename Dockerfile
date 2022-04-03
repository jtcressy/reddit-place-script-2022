FROM python:3.10.4-alpine
LABEL org.opencontainers.image.source="https://github.com/jtcressy/reddit-place-script-2022"
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "./main.py"]