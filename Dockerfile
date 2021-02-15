FROM python:3.8

WORKDIR /usr/app

COPY requirements.txt ./

# Set environment variables.
ENV PORT 5000 

RUN pip install --no-cache-dir -r requirements.txt

COPY ./ /usr/app

CMD ["python", "manage.py", "runserver" ,"0.0.0.0:$PORT"]

