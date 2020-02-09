FROM python:3

#set a directory for the app
WORKDIR /usr/src/app

#copy all the files to the container
COPY . .

#install dependencies
RUN pip install --no-cache-dir -r requirements.txt

#container expose the port number

EXPOSE 5000

#run the command
CMD ["python","./app.py"]