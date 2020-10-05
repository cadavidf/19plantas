#python container image
FROM python:3.8.2

# working directory to /app
WORKDIR /app

# current directory contentes into the contrainer at /app
ADD . /app

#install dependencies
RUN pip install -r requirements.txt

#run the command to start uWSGI 
CMD ["uwisgi", "--app.ini"]