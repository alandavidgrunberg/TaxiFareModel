FROM python:3.8.6-buster

COPY api /api
COPY TaxiFareModel /TaxiFareModel
COPY model.joblib /model.joblib
COPY requirements.txt /requirements.txt
COPY /Users/MacBookPro/code/alandavidgrunberg/alandavidgrunberg/gcp/alandavidgrunberg-da43c672609a.json /credentials.json

RUN pip install -r requirements.txt

CMD uvicorn api.fast:app --host 0.0.0.0 --port $PORT
