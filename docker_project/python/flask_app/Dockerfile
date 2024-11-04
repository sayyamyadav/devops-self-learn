#base image
FROM python:3.11




#working dir

WORKDIR /app

#code

COPY . .




#reuired library
RUN pip install -r requirements.txt

#run

CMD ["python", "app.py"]
