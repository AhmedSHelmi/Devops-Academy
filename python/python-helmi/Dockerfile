FROM python:3 

WORKDIR /opt 

COPY source_code/flask-app/main.py . 
COPY source_code/flask-app/requirements.txt . 
RUN pip install --no-cache-dir -r requirements.txt 
CMD [ "python", "main.py" ] 